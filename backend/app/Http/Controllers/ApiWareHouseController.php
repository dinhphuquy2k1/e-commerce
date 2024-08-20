<?php

namespace App\Http\Controllers;

use App\Models\WareHouse;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Enums\WareHouseType;

class ApiWareHouseController extends Controller
{

    /**
     * @return JsonResponse
     */
    public function get(): JsonResponse
    {
        $warehouses = WareHouse::all()->toArray();
        $ret = [
            'retrieval' => [$warehouses[0]] ?? [],
            'return' => [$warehouses[1]] ?? [],
        ];
        return $this->sendResponseSuccess($ret);
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function store(Request $request): JsonResponse
    {
        return $this->sendResponseSuccess();
    }
}
