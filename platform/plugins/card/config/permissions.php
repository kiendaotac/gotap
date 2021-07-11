<?php

return [
    [
        'name' => 'Cards',
        'flag' => 'card.index',
        'parent_flag'=>'card.index'
    ],
    [
        'name'        => 'Create',
        'flag'        => 'card.create',
        'parent_flag' => 'card.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'card.edit',
        'parent_flag' => 'card.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'card.destroy',
        'parent_flag' => 'card.index',
    ],
];
