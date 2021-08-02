<?php

Route::group(['namespace' => 'Botble\Social\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'socials', 'as' => 'social.'], function () {
            Route::resource('', 'SocialController')->parameters(['' => 'social']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'SocialController@deletes',
                'permission' => 'social.destroy',
            ]);
        });
    });

});
