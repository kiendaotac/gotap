<?php

return [
    [
        'name' => 'Orders',
        'flag' => 'order.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'order.create',
        'parent_flag' => 'order.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'order.edit',
        'parent_flag' => 'order.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'order.destroy',
        'parent_flag' => 'order.index',
    ],
];
