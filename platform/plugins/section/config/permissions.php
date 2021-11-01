<?php

return [
    [
        'name' => 'Sections',
        'flag' => 'section.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'section.create',
        'parent_flag' => 'section.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'section.edit',
        'parent_flag' => 'section.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'section.destroy',
        'parent_flag' => 'section.index',
    ],
];
