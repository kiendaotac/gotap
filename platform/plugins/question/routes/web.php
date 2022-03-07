<?php

Route::group(['namespace' => 'Botble\Question\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'questions', 'as' => 'question.'], function () {
            Route::resource('', 'QuestionController')->parameters(['' => 'question']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'QuestionController@deletes',
                'permission' => 'question.destroy',
            ]);
        });
    });

});
