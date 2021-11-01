<?php

return [
    [
        'name' => 'Social themes',
        'flag' => 'social-theme.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'social-theme.create',
        'parent_flag' => 'social-theme.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'social-theme.edit',
        'parent_flag' => 'social-theme.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'social-theme.destroy',
        'parent_flag' => 'social-theme.index',
    ],
];
