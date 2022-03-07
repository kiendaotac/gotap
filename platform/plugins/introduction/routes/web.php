<?php

Route::group(['namespace' => 'Botble\Introduction\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'introductions', 'as' => 'introduction.'], function () {
            Route::resource('', 'IntroductionController')->parameters(['' => 'introduction']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'IntroductionController@deletes',
                'permission' => 'introduction.destroy',
            ]);
        });
    });

});
