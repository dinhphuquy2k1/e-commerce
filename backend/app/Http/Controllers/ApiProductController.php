<?php

namespace App\Http\Controllers;

use App\Enums\GenitiveType;
use App\Enums\PropertyType;
use App\Models\Category;
use App\Models\Media;
use App\Models\Product;
use App\Models\ProductProperty;
use App\Models\Variant;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response as ResponseAlias;

class ApiProductController extends Controller
{

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function get(Request $request): JsonResponse
    {
        $request->validate([
            'limit' => 'integer|min:1|max:100',
        ]);

        $products = Product::orderByDesc('created_at')->paginate($request->get('limit'))->toArray();
        return $this->sendResponseSuccess($products);
    }

    public function getById(Request $request, int $id)
    {
        $data = Product::find($id);

        if (!$data) {
            return [];
        } else {
            $product = $data->load(['brand', 'category', 'medias', 'products_properties', 'variants.media'])->toArray();
            foreach ($product['medias'] as &$media) {
                $media = [
                    'url' => asset('storage/' . $media['media_url']),
                ];
            }

            foreach ($product['products_properties'] as &$property) {
                $property = [
                    'id' => $property['id'],
                    'propertyName' => $property['property_name'],
                    'type' => $property['type'],
                    'value' => json_decode($property['value'], true),
                ];
            }

            $variants = [];
            $variantOptions = [];
            $variantTypes = [];
            $minPrice = PHP_INT_MAX;
            $variantChoose = [];
            foreach ($product['variants'] as &$variant) {
                $contents = json_decode($variant['content'], true);
                $types = [];
                foreach ($contents as $key => $item) {
                    if (preg_match('/^variant_(name|option)_(\d+)$/', $key, $matches)) {
                        $type = $matches[1]; // 'name' hoặc 'option'
                        $index = $matches[2]; // Chỉ số (0, 1, ...)
                        if ($type == 'name') {
                            $variants[$key] = $item;
                            continue;
                        }

                        $types[] = $item;
                        $variantOptions[$index][] = $item;
                    }
                }

                $variantTypes[implode('|', $types)] = [
                    'id' => $variant['id'],
                    'url' => asset('storage/' . $variant['media']['media_url']),
                    'price' => $variant['variant_price'],
                    'quantity' => $variant['variant_quantity'],
                ];

                if ($variant['variant_price'] < $minPrice) {
                    $minPrice = $variant['variant_price'];
                    $variantChoose = $types;
                }
            }

            foreach ($variantOptions as &$variantOption) {
                $variantOption = array_values(array_unique($variantOption));
            }

            // Lấy ra danh sách các sản phẩm liên quan
            $categoryRelations = Cache::get('categoryRelations');
            $categoryInfos = Cache::get('categoryInfos');
            $relationIds = [];
            foreach ($categoryRelations as $relation) {
                if (in_array($product['category_id'], $relation)) {
                    $relationIds = $relation;
                    break;
                }
            }

            $productRelations = Product::whereIn('category_id', $relationIds)
                ->with(['brand', 'category', 'medias', 'products_properties', 'variants.media'])
                ->get()
                ->groupBy('category_id')
                ->map(function ($categoryProducts) {
                    return $categoryProducts->take(25);
                })->sortByDesc(function ($categoryProducts) {
                    return $categoryProducts->count();
                })->first();

            $productRelationResults = [
                'data' => [],
                'title' => '',
            ];

            if (!empty($productRelations)) {
                $productRelations = $productRelations->toArray();
                $title = null;
                foreach ($productRelations as &$productRelation) {
                    $title = $categoryInfos[$productRelation['category_id']];
                    foreach ($productRelation['medias'] as &$media) {
                        $media = [
                            'url' => asset('storage/' . $media['media_url']),
                        ];
                    }
                }
                $productRelationResults = [
                    'data' => $productRelations,
                    'title' => $title,
                ];
            }

            $result = [
                'productName' => $product['product_name'],
                'productPrice' => $product['product_price'],
                'productQuantity' => $product['product_quantity'],
                'description' => $product['description'],
                'brand' => $product['brand']['brand_name'],
                'category' => $product['category']['name'],
                'medias' => $product['medias'],
                'hasVariant' => $product['has_variant'],
                'productProperties' => $product['products_properties'],
                'propertyTypes' => collect(PropertyType::getInstances())->map(function ($instance) {
                    return [
                        'value' => $instance->value,
                        'description' => $instance->description,
                    ];
                })->toArray(),
                'variants' => [
                    'masters' => array_values($variants),
                    'options' => $variantOptions,
                    'types' => $variantTypes,
                    'select' => $variantChoose
                ],
                'relations' => $productRelationResults
            ];

            return $this->sendResponseSuccess($result);
        }
    }

    function findParentCategory($categories, $categoryKey, $parent = null)
    {
        foreach ($categories as $category) {
            if ($category['key'] == $categoryKey) {
                return $parent;
            }

            if (!empty($category['children'])) {
                $foundParent = $this->findParentCategory($category['children'], $categoryKey, $category);
                if ($foundParent) {
                    return $foundParent;
                }
            }
        }

        return null;
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function store(Request $request): JsonResponse
    {
        $dataValidator = Validator::make(
            $request->all(),
            [
                'medias' => 'required|array',
                'medias.*' => 'required|file|mimetypes:image/*,video/mp4|max:2048',
                'variantImages' => 'nullable|array',
                'variantImages.*' => 'required|file|mimetypes:image/*|max:2048',
                'variants' => 'nullable|required_without:variant',
                'variant' => 'required_without:variants',
                'product' => 'required|json',
                'category_id' => 'required|exists:categories,id',
                'size_id' => 'nullable|required_without:sizeImage',
                'sizeImage' => 'nullable|required_without:size_id|file|mimetypes:image/*|max:2048',
            ],
            [
                'medias.required' => 'Phương tiện không được để trống',
                'medias.array' => 'Phương tiện yêu cầu là 1 mảng',
                'medias.*.required' => 'Vui lòng tải lên ít nhất 1 phương tiện',
                'medias.*.mimetypes' => 'Phương tiện phải là hình ảnh hoặc video',
                'medias.*.max' => 'Kích thước file không được vượt quá :max kilobytes',
                'variantImages.*.max' => 'Kích thước file không được vượt quá :max kilobytes',
                'variantImages.required' => 'Phương tiện không được để trống',
                'variantImages.array' => 'Phương tiện yêu cầu là 1 mảng',
                'variantImages.*.required' => 'Vui lòng tải lên ít nhất 1 phương tiện',
                'variantImages.*.mimetypes' => 'Phương tiện phải là hình ảnh',
                'product.required' => 'Dữ liệu về sản phẩm không được trống',
                'product.json' => 'Dữ liệu sản phẩm phải là định dạng JSON',
                'category_id.required' => 'Id category không được để trống',
                'category_id.exists' => 'Id category không tồn tại',
                'size_id.exists' => 'Id size không tồn tại',
                'sizeImage.required_without' => 'Hình ảnh kích thước là bắt buộc',
                'sizeImage.mimetypes' => 'Yêu cầu dữ liệu là hình ảnh',
            ]
        );

        if ($request['variant']) {
            $variantValidator = Validator::make(
                json_decode($request['variant'], true),
                [
                    'retailPrice' => 'required|numeric|max:999999999',
                    'quantity' => 'required|numeric|max:999999',
                ],
                [
                    'retailPrice.required' => 'Giá bán lẻ không được để trống',
                    'retailPrice.numeric' => 'Giá bán lẻ phải là một số',
                    'retailPrice.max' => 'Giá không được vượt quá :max',
                    'quantity.required' => 'Số lượng không được để trống',
                    'quantity.numeric' => 'Số lượng phải là một số',
                    'quantity.max' => 'Số lượng được vượt quá :max',
                ]
            );
        } else {
            $variantsValidator = Validator::make(
                json_decode($request['variants'], true),
                [
                    '*.variant_name_*' => 'required',
                    '*.variant_option_*' => 'required|string',
                    '*.retail_price' => 'required|numeric|max:999999999',
                    '*.sku_seller' => 'string|nullable',
                    '*.quantity' => 'required|numeric|max:999999',
                ],
                [
                    '*.variant_name_*.required' => 'Tên biến thể không được để trống',
                    '*.variant_option_*.required' => 'Giá trị biến thể không được để trống',
                    '*.retail_price.required' => 'Giá bán lẻ không được để trống',
                    '*.retail_price.numeric' => 'Giá bán lẻ phải là một số',
                    '*.retail_price.max' => 'Giá không được vượt quá :max',
                    '*.quantity.required' => 'Số lượng không được để trống',
                    '*.quantity.numeric' => 'Số lượng phải là một số',
                    '*.quantity.max' => 'Số lượng được vượt quá :max',
                ]
            );
        }

        if ($request['properties']) {
            $propertiesValidator = Validator::make(
                json_decode($request['properties'], true),
                [
                    '*.id' => 'required|integer|exists:properties,id',
                    '*.type' => 'required|integer',
                    '*.name' => 'required',
                    '*.data' => 'required',
                ],
                [
                    '*.id.required' => 'Id không trống',
                    '*.id.exists' => 'Id properties không tồn tại',
                    '*.data.required' => 'data không trống',
                ]
            );
        }

        $productValidator = Validator::make(
            json_decode($request['product'], true),
            [
                'product_name' => 'required|string',
                'description' => 'required|string',
                'use_sample_size' => 'boolean',
                'size_id' => 'nullable|exists:sizes,id',
                'brand_id' => 'required|integer',
            ],
            [
                'product_name.required' => 'Tên sản phẩm không được để trống',
                'size_id.exists' => 'Mã kích thước không tồn tại',
                'description.required' => 'Mô tả không được để trống',
                'brand_id' => 'Thương hiệu không được để trống',
            ]);

        if ($dataValidator->fails() || $productValidator->fails() || ($request['variant'] && $variantValidator->fails()) || ($request['variants'] && $variantsValidator->fails()) || ($request['properties'] && $propertiesValidator->fails())) {
            $errors = [];
            if ($dataValidator->fails()) {
                $errors = $dataValidator->errors()->toArray();
            }
            if ($productValidator->fails()) {
                $errors = array_merge($productValidator->errors()->toArray(), $errors);
            }
            if ($request['variant'] && $variantValidator->fails()) {
                $errors = array_merge($variantValidator->errors()->toArray(), $errors);
            }

            if ($request['variants'] && $variantsValidator->fails()) {
                $errors = array_merge($variantsValidator->errors()->toArray(), $errors);
            }

            if ($request['properties'] && $propertiesValidator->fails()) {
                $errors = array_merge($propertiesValidator->errors()->toArray(), $errors);
            }
            return $this->sendResponse(ResponseAlias::HTTP_UNPROCESSABLE_ENTITY, $errors);
        }

        $medias = $request->file('medias');
        $product = json_decode($request['product'], true);
        $variants = $request['variants'] ? json_decode($request['variants'], true) : [];
        $variantImages = $request->file('variantImages') ?? [];
        $sizeImage = $request->file('sizeImage');
        $mediaAttributes = [];
        try {
            if ($sizeImage) {
                $product['size_image'] = $sizeImage->store('images', 'public');
                $mediaAttributes[] = [
                    'genitive' => GenitiveType::SIZE,
                    'media_url' => $product['size_image'],
                ];
            }

            foreach ($medias as $media) {
                $mediaAttributes[] = [
                    'genitive' => GenitiveType::PRODUCT,
                    'media_url' => $media->store('images', 'public'),
                ];
            }
            foreach ($variantImages as $media) {
                $mediaAttributes[] = [
                    'genitive' => GenitiveType::VARIANT,
                    'media_url' => $media->store('images', 'public'),
                ];
            }

            $product['category_id'] = $request['category_id'];
            $product['has_variant'] = $product['has_variant'] ?? false;
            // ko có biến thể
            if (!$product['has_variant']) {
                $variant = json_decode($request['variant'], true);
                $product['product_price'] = $variant['retailPrice'];
                $product['product_quantity'] = $variant['quantity'];
            } else {
                $product['product_quantity'] = 0;
                foreach ($variants as &$variant) {
                    $product['product_quantity'] += $variant['quantity'];
                }

                $product['product_price'] = json_decode($request['product'], true)['min_price'];
            }
            DB::beginTransaction();
            $productID = Product::insertGetId($product);
            foreach ($mediaAttributes as &$item) {
                $item['product_id'] = $productID;
            }
            Media::insert($mediaAttributes);
            $variantMediaIds = array_slice(Media::latest()->take(count($mediaAttributes))->pluck('id')->toArray(),
                -count($variantImages), count($variantImages));
            // có biến thể
            if ($product['has_variant']) {
                foreach ($variants as $key => &$variant) {
                    $variant = [
                        'content' => json_encode($variant),
                        'product_id' => $productID,
                        'media_id' => $variantMediaIds[$key] ?? null,
                        'variant_price' => $variant['retail_price'],
                        'variant_quantity' => $variant['quantity'],
                    ];
                }
            }

            if ($request['properties']) {
                $properties = [];
                foreach (json_decode($request['properties'], true) as $key => $value) {
                    $properties[] = [
                        'product_id' => $productID,
                        'property_id' => $value['id'],
                        'value' => json_encode($value['data']),
                        'property_name' => $value['name'],
                        'type' => $value['type'],
                    ];
                }

                ProductProperty::insert($properties);
            }

            Variant::insert($variants);
            DB::commit();
        } catch (\Throwable $th) {
            DB::rollBack();
            // xóa ảnh đã tải lên nếu gặp lỗi
            foreach ($mediaAttributes as $v) {
                Storage::disk('public')->delete($v['media_url']);
            }
            return $this->sendResponseBadRequest(['message' => $th->getMessage()]);
        }
        return $this->sendResponseSuccess();
    }

    /**
     * @param Request $request
     * @return array
     */
    public function getProductWithFilter(Request $request): array
    {
        $validate = Validator::make(
            $request->all(),
            [
                'filters' => 'array|required',
                'filters.limit' => 'required|integer|min:1|max:100',
                'filters.categoryId' => 'nullable|exists:categories,id',
                'filters.withCategoryChildren' => 'required_with:filters.categoryId|boolean',
                'filters.rangePrice' => 'required|array',
                'filters.brands' => 'nullable|array',
                'order' => 'nullable|array',
                'order.orderType' => 'required_with:order|integer',
                'order.selected' => 'required_with:order|boolean',
            ]
        );

        if ($validate->fails()) {
            return [];
        }

        $filters = $request->get('filters');
        $order = $request->get('order');
        $categoryIds = [];
        $queryBuilder = Product::query();

        if (!empty($filters['categoryId'])) {
            if ($filters['withCategoryChildren']) {
                $categories = Cache::get('categories');
                $category = $categories[0];
                foreach ($categories as $item) {
                    if ($filters['categoryId'] == $item['key']) {
                        $category = $item;
                        break;
                    }
                }
                $categoryIds = Category::getCategoryIds($category);
                $queryBuilder->whereIn('category_id', $categoryIds);
            } else {
                $queryBuilder->where('category_id', $filters['categoryId']);
            }
        }

        $minPrice = $filters['rangePrice'][0];
        $maxPrice = $filters['rangePrice'][1];
        if ($minPrice > $maxPrice) {
            $minPrice = $maxPrice;
            $maxPrice = $minPrice;
        }

        if (!empty($filters['brands'])) {
            $queryBuilder->whereIn('brand_id', $filters['brands']);
        }

        $queryBuilder->where('product_price', '>=', $minPrice);
        $queryBuilder->where('product_price', '<=', $maxPrice);
        $queryBuilder->orWhere(function ($query) use ($minPrice, $maxPrice, $filters, $categoryIds) {
            $query->whereNotNull('max_price')
                ->where('max_price', '<=', $maxPrice);
            if (!empty($filters['categoryId'])) {
                if (!empty($categoryIds)) {
                    $query->whereIn('category_id', $categoryIds);
                } else {
                    $query->where('category_id', $filters['categoryId']);
                }
            }

            if (!empty($filters['brands'])) {
                $query->whereIn('brand_id', $filters['brands']);
            }
        });

        if ($order) {
            switch ($order['orderType']) {
                // liên quan
                case 1:

                    break;
                //mới nhất
                case 2:
                    break;
                // bán chạy
                case 3:
                    break;
                // Giá
                case 4:
                    if ($order['selected']) {
                        $queryBuilder->orderBy('product_price');
                    } else {
                        $queryBuilder->orderBy('product_price', 'desc');
                    }
                    break;
                default:
                    break;
            }
        }

        $products = $queryBuilder->with('medias')->paginate($request['filters']['limit']);
        $results = [];
        foreach ($products as $key => &$product) {
            foreach ($product['medias'] as &$media) {
                $media['media_url'] = asset('storage/' . $media['media_url']);
            }

            $results['data'][] = [
                'id' => $product['id'],
                'index' => $key,
                'productName' => $product['product_name'],
                'brand_id' => $product['brand_id'],
                'medias' => $product['medias'],
                'productPrice' => $product['product_price'],
            ];
        }

        return array_merge([
            'perPage' => $products->perPage(),
            'currentPage' => $products->currentPage(),
            'total' => $products->total(),
            'totalPages' => $products->lastPage(),
        ], $results);
    }
}
