<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class ShoppingMallConfig extends Model
{
    use HasFactory;

    /**
     * @return HasOne
     */
    public function ads(): HasOne
    {
        return $this->HasOne(ShoppingMallItem::class);
    }

    /**
     * @return HasMany
     */
    public function tags(): HasMany
    {
        return $this->hasMany(ShoppingMallTag::class);
    }

    public function items(): HasMany
    {
        return $this->hasMany(ShoppingMallItem::class);
    }
}
