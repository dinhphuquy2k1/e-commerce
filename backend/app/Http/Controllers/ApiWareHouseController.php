<?php

namespace App\Http\Controllers;

use App\Models\WareHouse;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Enums\WareHouseType;
use Illuminate\Http\Response;

class ApiWareHouseController extends Controller
{

    /**
     * @return Application|ResponseFactory|Response|object
     */
    public function get()
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
     * @return Application|ResponseFactory|Response|object
     */
    public function store(Request $request)
    {
        return $this->sendResponseSuccess();
    }
}
