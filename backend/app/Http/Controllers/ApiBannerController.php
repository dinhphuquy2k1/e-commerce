<?php

namespace App\Http\Controllers;

use App\Enums\ConfigDefault;
use App\Enums\ConfigType;
use App\Models\Banner;
use App\Models\ShoppingMallConfig;
use App\Models\ShoppingMallItem;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;

class ApiBannerController extends Controller
{
    /**
     * @param Request $request
     * @return Application|ResponseFactory|JsonResponse|Response|object
     */
    public function save(Request $request)
    {
        $attributes = $request->validate([
            'displayType' => ['required', 'integer', Rule::in(ConfigType::getValues())],
            'title' => ['required', 'string'],
        ],
            [
                'displayType.required' => 'Trường loại hiển thị là bắt buộc.',
                'displayType.integer' => 'Trường loại hiển thị phải là số nguyên.',
                'displayType.in' => 'Giá trị của loại hiển thị không hợp lệ.'
            ]
        );

        $config = ShoppingMallConfig::orderBy('display_order', 'DESC')->first();
        $displayOrder = 1;
        if ($config) {
            $displayOrder = $config['display_order'] + 1;
        }

        switch ($attributes['displayType']) {
            case ConfigType::SLIDER:
                break;
            case ConfigType::ADS:
                $attributeItem = [
                    'name' => 'ads',
                    'type' => ConfigType::ADS
                ];
                break;
            default:
                break;
        }

        $attributes = [
            'title' => $attributes['title'],
            'type' => $attributes['displayType'],
            'is_use' => 1,
            'columns_per_row' => ConfigDefault::COLUMN_PER_ROW,
            'display_order' => $displayOrder,
        ];

        try {
            $configId = ShoppingMallConfig::insertGetId($attributes);
            if (isset($attributeItem)) {
                $attributeItem['shopping_mall_config_id'] = $configId;

                ShoppingMallItem::insert($attributeItem);
            }

            $result = [
                'id' => $configId,
                'title' => $attributes['title'],
                'columnsPerRow' => ConfigDefault::COLUMN_PER_ROW,
                'type' => $attributes['type'],
                'displayOrder' => $displayOrder,
                'isUse' => true,
                'items' => [],
                'tags' => [],
                'url' => null,
            ];

            return $this->sendResponseSuccess(['message' => 'success', 'data' => $result]);
        } catch (\Exception $th) {
            DB::rollBack();
            return $this->sendResponse(500, ['message' => $th->getMessage()]);
        }
    }

    /**
     * @param Request $request
     * @return Application|ResponseFactory|JsonResponse|Response|object
     */
    public function update(Request $request)
    {
        $attribute = $request->validate([
            'id' => 'required|exists:shopping_mall_configs,id',
            'title' => 'required|string|max:50',
            'description' => 'required|string|min:1|max:50',
            'link' => '',
            'linkType' => 'required|integer',
            'isUse' => 'required|integer',
            'displayOrder' => 'required|integer',
        ]);

        try {
            DB::beginTransaction();
            Banner::find($attribute['id'])->update(
                [
                    'title' => $attribute['title'],
                    'description' => $attribute['description'],
                    'link' => $attribute['link'],
                    'link_type' => $attribute['linkType'],
                    'is_use' => $attribute['isUse'],
                    'display_order' => $attribute['displayOrder'],
                ]
            );
            DB::commit();
            return $this->sendResponseSuccess(['message' => 'success']);
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->sendResponse($th->getCode(), ['message' => $th->getMessage()]);
        }
    }

    /**
     * @param int $id
     * @return Application|ResponseFactory|JsonResponse|Response|object
     */
    public function delete(int $id)
    {
        try {
            DB::beginTransaction();
            Banner::destroy($id);
            DB::commit();

            return $this->sendResponseSuccess(['message' => 'success']);
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->sendResponse($th->getCode(), ['message' => $th->getMessage()]);
        }
    }
}
