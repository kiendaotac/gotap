<?php

return [
    [
        'name' => 'Generateqrcodes',
        'flag' => 'generateqrcode.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'generateqrcode.create',
        'parent_flag' => 'generateqrcode.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'generateqrcode.edit',
        'parent_flag' => 'generateqrcode.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'generateqrcode.destroy',
        'parent_flag' => 'generateqrcode.index',
    ],
];
