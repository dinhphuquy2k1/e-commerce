<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ApiCategoryController;
use App\Http\Controllers\ApiProductController;
use App\Http\Controllers\ApiBrandController;
use App\Http\Controllers\ApiSizeController;
use App\Http\Controllers\ApiMenuController;
use App\Http\Controllers\ApiWareHouseController;
use App\Http\Controllers\ApiRoleController;
use App\Http\Controllers\ApiOrderController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/upload/image', [ApiCategoryController::class, 'uploadImage']);
Route::post('/categories/properties/{id}', [ApiCategoryController::class, 'getProperties']);
Route::prefix('categories')->group(function () {
    Route::get('/', [ApiCategoryController::class, 'get']);
});

Route::prefix('menus')->group(function () {
    Route::get('/{type}', [ApiMenuController::class, 'getMenu'])->where('type', '[0-9]+');
});

Route::prefix('products')->group(function () {
    Route::post('/', [ApiProductController::class, 'get']);
    Route::post('/create', [ApiProductController::class, 'store']);
});

Route::prefix('orders')->group(function () {
    Route::post('/', [ApiOrderController::class, 'get']);
});

Route::prefix('brands')->group(function () {
    Route::get('/', [ApiBrandController::class, 'get']);
    Route::post('/', [ApiBrandController::class, 'store']);
});

Route::prefix('sizes')->group(function () {
    Route::get('/', [ApiSizeController::class, 'get']);
    Route::post('/', [ApiSizeController::class, 'store']);
});

Route::prefix('warehouses')->group(function () {
    Route::get('/', [ApiWareHouseController::class, 'get']);
    Route::post('/', [ApiWareHouseController::class, 'store']);
});

Route::prefix('roles')->group(function () {
    Route::get('/', [ApiRoleController::class, 'get']);
    Route::get('/:type', [ApiRoleController::class, 'getRoleByType']);
});
