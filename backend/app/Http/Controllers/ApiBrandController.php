<?php

namespace App\Http\Controllers;

use App\Models\Criteria;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Brand;
use Illuminate\Support\Facades\DB;

class ApiBrandController extends Controller
{
    /**
     * Lấy danh sách thương hiệu
     * @return JsonResponse
     */
    public function get(): JsonResponse
    {
        return $this->sendResponseSuccess(Brand::orderBy('id', 'DESC')->get()->toArray());
    }

    /**
     * Thêm mới thương hiệu
     * @param Request $request
     * @return JsonResponse
     */
    public function store(Request $request)
    {
        $attribute = $request->validate(
            [
                'brand_name' => 'required|string',
            ],
            [
                'brand_name.required' => 'Tên thương hiệu không được để trống',
                'brand_name.string' => 'Tên thương hiệu phải là chuỗi',
            ]
        );
        try {
            DB::beginTransaction();
            Brand::insert($attribute);
            DB::commit();
            return $this->sendResponseSuccess();
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->sendResponseBadRequest();
        }
    }
}
