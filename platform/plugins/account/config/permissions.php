<?php

return [
    [
        'name' => 'Accounts',
        'flag' => 'account.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'account.create',
        'parent_flag' => 'account.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'account.edit',
        'parent_flag' => 'account.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'account.destroy',
        'parent_flag' => 'account.index',
    ],
];
