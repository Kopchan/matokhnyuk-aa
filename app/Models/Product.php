<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    public $timestamps = false;

    protected $fillable = [
        'type_id',
        'name',
        'article',
        'price',
    ];

    public function type() {
        return $this->belongsTo(ProductType::class);
    }
}
