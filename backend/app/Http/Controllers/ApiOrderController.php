<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Order;

class ApiOrderController extends Controller
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

        $orders = Order::orderByDesc('created_at')->paginate($request->get('limit'))->toArray();
        return $this->sendResponseSuccess($orders);
    }
}
