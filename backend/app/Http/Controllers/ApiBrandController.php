<?php

namespace App\Http\Controllers;

use App\Models\Criteria;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Brand;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;

class ApiBrandController extends Controller
{
    /**
     * @return Application|ResponseFactory|Response|object
     */
    public function get()
    {
        return $this->sendResponseSuccess(Brand::orderBy('id', 'DESC')->get()->toArray());
    }

    /**
     * @param Request $request
     * @return Application|ResponseFactory|Response|object
     */
    public function store(Request $request)
    {
        $attribute = $request->validate(
            [
                'brand_name' => 'required|string|unique:brands,brand_name',
            ],
            [
                'brand_name.required' => 'Tên thương hiệu không được để trống',
                'brand_name.string' => 'Tên thương hiệu phải là chuỗi',
                'brand_name.unique' => 'Tên thương hiệu đã tồn tại',
            ]
        );
        try {
            DB::beginTransaction();
            $brand = Brand::create($attribute);
            DB::commit();
            return $this->sendResponseSuccess($brand->toArray());
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->sendResponseBadRequest();
        }
    }
}
