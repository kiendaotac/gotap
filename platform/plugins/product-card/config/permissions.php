<?php

return [
    [
        'name' => 'Product cards',
        'flag' => 'product-card.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'product-card.create',
        'parent_flag' => 'product-card.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'product-card.edit',
        'parent_flag' => 'product-card.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'product-card.destroy',
        'parent_flag' => 'product-card.index',
    ],
];
