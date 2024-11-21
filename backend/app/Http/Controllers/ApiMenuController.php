<?php

namespace App\Http\Controllers;

use App\Models\Menu;

class ApiMenuController extends Controller
{
    /**
     * @param int $menuType
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response|object
     */
    public function getMenu(int $menuType)
    {
        $menus = Menu::where('menu_type', $menuType)->get()->toArray();
        $ret = $this->recursiveMenu($menus);
        return $this->sendResponseSuccess($ret);
    }

    /**
     * @param array $menus
     * @param ?int $parentId
     * @param int $level
     * @return array
     */
    public function recursiveMenu(array $menus, ?int $parentId = null, int $level = 0): array
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
                    'level' => $level,
                    'items' => $this->recursiveMenu($menus, $menu['id'], $level + 1),
                ];
                $category['routes'] = array_column($category['items'], 'route');
                $category['route_keys'] = array_column($category['items'], 'key');
                $result[] = $category;
            }
        }
        return $result;
    }
}
