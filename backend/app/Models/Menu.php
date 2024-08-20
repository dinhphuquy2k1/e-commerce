<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Menu extends Model
{
    use HasFactory;

    /**
     * @return HasMany
     */
    public function items(): HasMany
    {
        return $this->hasMany(Menu::class, 'parent_id');
    }
}
