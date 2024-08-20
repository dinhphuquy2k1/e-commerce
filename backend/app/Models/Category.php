<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Category extends Model
{
    use HasFactory;

    /**
     * @return HasMany
     */
    public function children(): HasMany
    {
        return $this->hasMany(Category::class, 'parent_id');
    }

    /**
     * Lấy danh sách property theo id category
     * @return HasManyThrough
     */
    public function properties(): HasManyThrough
    {
        return $this->hasManyThrough(Property::class, CategoryProperty::class, 'category_id', 'id', 'id', 'property_id')->select('properties.*', 'categories_properties.required');
    }

    /**
     * @return HasOne
     */
    public function media(): HasOne
    {
        return $this->hasOne(Media::class);
    }
}
