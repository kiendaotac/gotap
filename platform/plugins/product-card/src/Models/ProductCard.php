<?php

namespace Botble\ProductCard\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;

class ProductCard extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'product_cards';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'description',
        'bio',
        'price',
        'star',
        'old_price',
        'image1',
        'image2',
        'image3',
        'image4',
        'image5',
        'link',
        'is_card',
        'status',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];
}
