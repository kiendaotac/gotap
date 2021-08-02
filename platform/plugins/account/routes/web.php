<?php

Route::group(['namespace' => 'Botble\Account\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'accounts', 'as' => 'account.'], function () {
            Route::resource('', 'AccountController')->parameters(['' => 'account']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'AccountController@deletes',
                'permission' => 'account.destroy',
            ]);
        });
    });

});
