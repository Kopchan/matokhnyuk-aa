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

    public function sales() {
        return $this->hasMany(PartnerProduct::class);
    }

    public static function calcMaterial4Product(
        int $productTypeId,
        int $materialTypeId,
        int $receiveQuantity,
        float $param1,
        float $param2,
    ): int {
        try {

            if ($param1 < 0 || $param2 < 0) {
                return -1;
            }
            $materialType = MaterialType::find($materialTypeId);
            if (!$materialType) {
                return -1;
            }
            $productType = ProductType::find($productTypeId);
            if (!$productType) {
                return -1;
            }

            $result = $productType->coef
                * $param1
                * $param2
                * $receiveQuantity
                * (1 + $materialType->marriage);

            return ceil($result);
        }
        catch (\Exception $e) {
            return -1;
        }
    }
}
