<?php

return [
    [
        'name' => 'Portfolios',
        'flag' => 'portfolio.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'portfolio.create',
        'parent_flag' => 'portfolio.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'portfolio.edit',
        'parent_flag' => 'portfolio.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'portfolio.destroy',
        'parent_flag' => 'portfolio.index',
    ],
];
