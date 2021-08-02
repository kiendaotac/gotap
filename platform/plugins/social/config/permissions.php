<?php

return [
    [
        'name' => 'Socials',
        'flag' => 'social.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'social.create',
        'parent_flag' => 'social.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'social.edit',
        'parent_flag' => 'social.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'social.destroy',
        'parent_flag' => 'social.index',
    ],
];
