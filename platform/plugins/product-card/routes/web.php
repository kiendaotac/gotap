<?php

Route::group(['namespace' => 'Botble\ProductCard\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'product-cards', 'as' => 'product-card.'], function () {
            Route::resource('', 'ProductCardController')->parameters(['' => 'product-card']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'ProductCardController@deletes',
                'permission' => 'product-card.destroy',
            ]);
        });
    });

});
