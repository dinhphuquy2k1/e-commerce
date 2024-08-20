<?php

namespace App\Http\Controllers;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\Role;
use App\Enums\RoleType;

class ApiRoleController extends Controller
{
    /**
     * @return JsonResponse
     */
    public function get(): JsonResponse
    {
        return $this->sendResponseSuccess($this->getRole());
    }

    /**
     * @param $type
     * @return array
     */
    public function getRole($type = null): array
    {
        if ($type) {
            $roles['roles'] = Role::with('permissions')->where('role_type', $type)->get()->toArray();
        } else {
            $roles['roles'] = Role::with('permissions')->get()->toArray();
        }
        foreach ($roles['roles'] as &$role) {
            $role['permissions'] = implode(', ', array_column($role['permissions'], 'permission_name'));
        }
        $roles['types'] = collect(RoleType::getInstances())->values()->map(function ($instance) {
            switch ((int)$instance->value) {
                case RoleType::DEFAULT:
                    $description = 'Mặc định';
                    break;
                case RoleType::CUSTOM:
                    $description = 'Tùy chỉnh';
                    break;
                case RoleType::ALL:
                    $description = 'Tất cả các vai trò';
                    break;
                default:
                    $description = '';
            }
            return [
                'value' => $instance->value,
                'description' => $description,
            ];
        });

        return $roles;
    }

    /**
     * @param int $type
     * @return JsonResponse
     */
    public function getRoleByType(int $type): JsonResponse
    {
        return $this->sendResponseSuccess($this->getRole($type));
    }
}
