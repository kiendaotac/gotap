<?php

return [
    [
        'name' => 'Reviews',
        'flag' => 'review.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'review.create',
        'parent_flag' => 'review.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'review.edit',
        'parent_flag' => 'review.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'review.destroy',
        'parent_flag' => 'review.index',
    ],
];
