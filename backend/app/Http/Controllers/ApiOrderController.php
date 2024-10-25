<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Order;
use Illuminate\Http\Response;

class ApiOrderController extends Controller
{
    /**
     * @param Request $request
     * @return Application|ResponseFactory|Response|object
     */
    public function get(Request $request)
    {
        $request->validate([
            'limit' => 'integer|min:1|max:100',
        ]);

        $orders = Order::orderByDesc('created_at')->paginate($request->get('limit'))->toArray();
        return $this->sendResponseSuccess($orders);
    }
}
