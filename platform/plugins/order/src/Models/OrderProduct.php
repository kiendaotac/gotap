<?php

namespace Botble\Order\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\ProductCard\Models\ProductCard;

class OrderProduct extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'order_products';

    /**
     * @var array
     */
    protected $fillable = [
        'qty',
        'product_id',
        'order_id',
    ];

    public function info()
    {
        return $this->belongsTo(ProductCard::class, 'product_id', 'id');
    }
}
