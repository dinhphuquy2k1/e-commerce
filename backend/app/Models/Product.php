<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Product extends Model
{
    use HasFactory;

    /**
     * @return HasMany
     */
    public function medias(): HasMany
    {
        return $this->hasMany(Media::class);
    }

    /**
     * @return HasOne
     */
    public function media(): HasOne
    {
        return $this->hasOne(Media::class);
    }

    /**
     * @return HasMany
     */
    public function products_properties(): HasMany
    {
        return $this->hasMany(ProductProperty::class);
    }

    /**
     * @return HasManyThrough
     */
    public function properties(): HasManyThrough
    {
        return $this->hasManyThrough(Property::class, ProductProperty::class, 'product_id', 'id', 'id', 'property_id');
    }

    /**
     * @return HasMany
     */
    public function variants(): HasMany
    {
        return $this->hasMany(Variant::class);
    }

    /**
     * @return BelongsTo
     */
    public function brand(): BelongsTo
    {
        return $this->belongsTo(Brand::class);
    }

    /**
     * @return BelongsTo
     */
    public function category(): BelongsTo
    {
        return $this->belongsTo(Category::class);
    }
}
