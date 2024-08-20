<?php

namespace App\Http\Controllers;

use App\Models\Menu;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Enums\MenuType;

class ApiMenuController extends Controller
{
    /**
     * @param int $menuType
     * @return JsonResponse
     */
    public function getMenu(int $menuType): JsonResponse
    {
        $menus = Menu::where('menu_type', $menuType)->get()->toArray();
        $ret = $this->recursiveMenu($menus);
        return $this->sendResponseSuccess($ret);
    }

    public function recursiveMenu(array $menus, $parentId = null): array
    {
        $result = [];
        foreach ($menus as $menu) {
            if ($parentId == $menu['parent_id']) {
                $category = [
                    'key' => $menu['id'],
                    'id' => $menu['id'],
                    'label' => $menu['label'],
                    'icon' => $menu['icon'],
                    'route' => $menu['route'],
                    'display' => $menu['display'],
                    'parent_id' => $menu['parent_id'],
                    'items' => $this->recursiveMenu($menus, $menu['id']),
                ];
                $category['routes'] = array_column($category['items'], 'route');
                $category['route_keys'] = array_column($category['items'], 'key');
                $result[] = $category;
            }
        }
        return $result;
    }
}
