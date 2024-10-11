<?php

namespace App\Http\Controllers;

use App\Enums\PropertyType;
use App\Models\ShoppingMallConfig;
use App\Enums\ConfigType;
use Illuminate\Http\JsonResponse;

class ApiHomeController extends Controller
{
    /**
     * @return JsonResponse
     */
    public function getConfigs(): JsonResponse
    {
        $configs = ShoppingMallConfig::with([
            'ads.media',
            'tags.items',
            'items.product.media'
        ])->orderBy('display_order')->get();

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
                'title' => $config['title'],
                'type' => $config['type'],
                'columnsPerRow' => $config['columns_per_row'],
                'quantity' => $config['quantity'],
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
        return $this->sendResponseSuccess($results);
    }
}
