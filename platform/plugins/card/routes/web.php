<?php

Route::group(['namespace' => 'Botble\Card\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'cards', 'as' => 'card.'], function () {
            Route::resource('', 'CardController')->parameters(['' => 'card']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'CardController@deletes',
                'permission' => 'card.destroy',
            ]);
        });
    });

});
