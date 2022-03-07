<?php

return [
    [
        'name' => 'Introductions',
        'flag' => 'introduction.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'introduction.create',
        'parent_flag' => 'introduction.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'introduction.edit',
        'parent_flag' => 'introduction.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'introduction.destroy',
        'parent_flag' => 'introduction.index',
    ],
];
