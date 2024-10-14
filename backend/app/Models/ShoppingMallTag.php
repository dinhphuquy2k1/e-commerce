<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class ShoppingMallTag extends Model
{
    use HasFactory;

    /**
     * @return HasMany
     */
    public function items(): HasMany
    {
        return $this->hasMany(ShoppingMallItem::class);
    }
}