<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Enums\RoleType;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;

class Role extends Model
{
    use HasFactory;

    /**
     * @param $value
     * @return string
     */
    public function getRoleTypeAttribute($value): ?string
    {
        switch ($value) {
            case RoleType::CUSTOM:
                return 'Tùy chỉnh';
            case RoleType::DEFAULT:
            default:
                return 'Mặc định';
        }
    }

    /**
     * @return HasManyThrough
     */
    public function permissions(): HasManyThrough
    {
        return $this->hasManyThrough(Permission::class, RolePermission::class, 'role_id', 'id', 'id', 'permission_id');
    }
}
