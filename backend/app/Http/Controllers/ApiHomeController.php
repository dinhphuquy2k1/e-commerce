<?php

namespace App\Http\Controllers;

use App\Enums\PropertyType;
use App\Models\Banner;
use App\Models\ShoppingMallConfig;
use App\Enums\ConfigType;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;

class ApiHomeController extends Controller
{
    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function getConfigs(Request $request): JsonResponse
    {
        $isUse = $request->query('isUse');
        $query = ShoppingMallConfig::with([
            'ads.media',
            'tags.items',
            'items.product.media',
        ])->orderBy('display_order');

        if (isset($isUse)) {
            $query->where('is_use', $isUse);
        }

        $configs = $query->get();

        $banners = Banner::with('medias')->get();

        if (empty($configs)) {
            return $this->sendResponseSuccess();
        }

        $configs = $configs->toArray();
        $results = [];
        foreach ($configs as &$config) {
            // tags
            foreach ($config['tags'] as &$item) {
                $item = [
                    'title' => $item['name'],
                ];
            }

            // products
            foreach ($config['items'] as &$item) {
                if ($item['product']) {
                    $item = [
                        'id' => $item['product']['id'],
                        'productName' => $item['product']['product_name'],
                    ];
                }

            }

            // ads
            if ($config['ads']) {
                if (!empty($config['ads']['media'])) {
                    $config['url'] = asset('storage/' . $config['ads']['media']['media_url']);
                }
            }

            $results['data'][] = [
                'id' => $config['id'],
                'title' => $config['title'],
                'type' => $config['type'],
                'columnsPerRow' => $config['columns_per_row'],
                'displayOrder' => $config['display_order'],
                'isUse' => $config['is_use'],
                'items' => $config['type'] != ConfigType::ADS ? $config['items'] : [],
                'url' => $config['url'] ?? null,
                'tags' => $config['tags'],
            ];
        }

        $results['type'] = collect(ConfigType::getInstances())->map(function ($instance) {
            return [
                'value' => $instance->value,
                'description' => $instance->description,
            ];
        })->toArray();

        $results['optionTypes'] = collect(ConfigType::getInstances())->reject(function ($instance) {
            return in_array($instance->value, [ConfigType::ADS]);
        })->values()->map(function ($instance) {
            switch ((int)$instance->value) {
                case ConfigType::SLIDER:
                    $description = 'slider';
                    break;
                default:
                    $description = 'default_text';
            }
            return [
                'value' => $instance->value,
                'description' => $description,
            ];
        })->toArray();

        $results['banners'] = [];
        if (!empty($banners)) {
            foreach ($banners->toArray() as &$banner) {
                foreach ($banner['medias'] as &$media) {
                    $media = [
                        'url' => asset('storage/' . $media['media_url']),
                        'type' => $media['type'],
                    ];
                }

                $banner = [
                    'title' => $banner['title'],
                    'description' => $banner['description'],
                    'medias' => $banner['medias'],
                ];

                $results['banners'][] = $banner;
            }
        }

        return $this->sendResponseSuccess($results);
    }
}
