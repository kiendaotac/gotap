<?php

Route::group(['namespace' => 'Botble\Icon\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'icons', 'as' => 'icon.'], function () {
            Route::resource('', 'IconController')->parameters(['' => 'icon']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'IconController@deletes',
                'permission' => 'icon.destroy',
            ]);
        });
    });

});
