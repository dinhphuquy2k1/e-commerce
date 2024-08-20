<?php

namespace App\Http\Controllers;

use App\Models\Size;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ApiSizeController extends Controller
{

    /**
     * @return JsonResponse
     */
    public function get(): JsonResponse
    {
        $ret = Size::orderByDesc('created_at')->get()->toArray();
        foreach ($ret as &$item) {
            $item['size_option'] = json_decode($item['size_option'], true);
        }

        return $this->sendResponseSuccess($ret);
    }

    /**
     * @param Request $request
     * @return JsonResponse
     */
    public function store(Request $request): JsonResponse
    {
        $attribute = $request->validate(
            [
                'size_name' => 'required|string|unique:sizes,size_name',
                'note' => 'nullable|string',
                'one_size' => 'boolean',
                'size_option' => 'required|array',
                'size_option.*.*' => 'required|numeric',
            ],
            [
                'size_name.required' => 'Tên biểu đồ không được để trống',
                'size_name.unique' => 'Tên biểu đồ đã tồn tại',
                'one_size.boolean' => 'Loại kích thước không đúng định dạng (boolean)',
                'size_option.array' => 'Yêu cầu phải là mảng',
                'size_option.*.*.required' => 'Giá trị kích thước không được để trống',
                'size_option.*.*.numeric' => 'Giá trị kích thước phải là một số',
            ]
        );

        $attribute['size_option'] = json_encode($attribute['size_option']);

        $sizeID = null;
        try {
            DB::beginTransaction();
            $sizeID = Size::insertGetId($attribute);
            DB::commit();
        } catch (\Throwable $th) {
            DB::rollBack();
            return $this->sendResponseServerError(['message' => $th->getMessage()]);
        }
        return $this->sendResponseSuccess(['size_id' => $sizeID]);
    }
}
