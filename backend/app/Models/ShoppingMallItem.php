<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class ShoppingMallItem extends Model
{
    use HasFactory;

    /**
     * @return hasOne
     */
    public function media(): hasOne
    {
        return $this->hasOne(Media::class);
    }

    /**
     * @return belongsTo
     */
    public function product(): belongsTo
    {
        return $this->belongsTo(Product::class, 'product_id');
    }
}
