<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use App\Enums\PropertyType;

class ApiCategoryController extends Controller
{
    private $categoryIds = [
        '1',
        '7',
        '8',
        '9',
        '10',
        '5',
        '24',
    ];

    /**
     * @return JsonResponse
     */
    public function get(): JsonResponse
    {
        if (Cache::has('categories')) {
            $ret = Cache::get('categories');
        } else {
            $categories = Category::whereIn('id', $this->categoryIds)->orWhereNotNull('parent_id')->with('media')->get()->toArray();
            $categoryInfos = [];
            $result = $this->recursiveCategory($categories, null, $categoryInfos);
            Cache::put('categories', $result['tree']);
            Cache::put('categoryRelations', $result['relations']);
            Cache::put('categoryInfos', $categoryInfos);
            $ret = $result['tree'];
        }

        return $this->sendResponseSuccess($ret);
    }

    /**
     * @param array $categories
     * @param $parentId
     * @return array
     */
    public function recursiveCategory(array $categories, $parentId = null, &$categoryInfo = []): array
    {
        $result = [];
        $groupedIds = [];

        foreach ($categories as $category) {
            $categoryInfo[$category['id']] = $category['name'];
            if ($parentId == $category['parent_id']) {
                $group = [];
                $group[] = $category['id'];

                $childResult = $this->recursiveCategory($categories, $category['id'], $categoryInfo);
                foreach ($childResult['relations'] as $childGroup) {
                    $group = array_merge($group, $childGroup);
                }

                $categoryTree = [
                    'label' => $category['name'],
                    'key' => $category['id'],
                    'parent_id' => $category['parent_id'],
                    'media' => $category['media']['media_url'] ?? null,
                    'description' => $category['description'],
                    'children' => $childResult['tree'],
                ];

                $groupedIds[] = $group;
                $result[] = $categoryTree;
            }
        }

        return [
            'tree' => $result,
            'relations' => $groupedIds
        ];
    }

    /**
     * Lấy danh sách property theo id category
     * @param int $id
     * @return JsonResponse
     */
    public function getProperties(int $id): JsonResponse
    {
        $properties = Category::with('properties.property_values')->find($id);
        if (!$properties) {
            return $this->sendResponseSuccess();
        }
        $properties['propertyType'] = collect(PropertyType::getInstances())->map(function ($instance) {
            return [
                'value' => $instance->value,
                'description' => $instance->description,
            ];
        })->toArray();
        return $this->sendResponseSuccess($properties->toArray());
    }

    public function uploadImage(Request $request)
    {
        // Kiểm tra xem có file được gửi lên không
        if ($request->hasFile('croppedImage')) {
            // Lưu file vào thư mục public/uploads (hoặc bất kỳ thư mục nào bạn muốn)
            $path = $request->file('croppedImage')->store('uploads', 'public');

            // Trả về đường dẫn của ảnh đã lưu
            return response()->json(['path' => $path], 200);
        }

        // Trả về lỗi nếu không có file được gửi lên
        return response()->json(['error' => 'No image uploaded'], 400);
    }
}
