<?php

namespace App\Http\Controllers;

use App\Models\ShoppingMallConfig;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ApiShoppingMallConfigController extends Controller
{
    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function update(Request $request): JsonResponse
    {
        $attribute = $request->validate([
            'id' => 'required|exists:shopping_mall_configs,id',
            'title' => 'required|string|max:50',
            'columnsPerRow' => 'required|integer|min:1|max:10',
            'type' => 'required|integer',
            'isUse' => 'required|integer',
            'displayOrder' => 'required|integer',
        ]);

        try {
            DB::beginTransaction();
            $config = ShoppingMallConfig::find($attribute['id'])->update(
                [
                    'title' => $attribute['title'],
                    'columns_per_row' => $attribute['columnsPerRow'],
                    'type' => $attribute['type'],
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
}
