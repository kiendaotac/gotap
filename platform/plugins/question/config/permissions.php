<?php

return [
    [
        'name' => 'Questions',
        'flag' => 'question.index',
    ],
    [
        'name'        => 'Create',
        'flag'        => 'question.create',
        'parent_flag' => 'question.index',
    ],
    [
        'name'        => 'Edit',
        'flag'        => 'question.edit',
        'parent_flag' => 'question.index',
    ],
    [
        'name'        => 'Delete',
        'flag'        => 'question.destroy',
        'parent_flag' => 'question.index',
    ],
];
