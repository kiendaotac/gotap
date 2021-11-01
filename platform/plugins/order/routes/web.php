<?php

Route::group(['namespace' => 'Botble\Order\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'orders', 'as' => 'order.'], function () {
            Route::resource('', 'OrderController')->parameters(['' => 'order']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'OrderController@deletes',
                'permission' => 'order.destroy',
            ]);
            Route::post('confirm', [
                'as'        =>  'confirm',
                'uses'      =>  'OrderController@confirm',
                'permission'=>  'order.edit'
            ]);
            Route::post('cancel', [
                'as'        =>  'cancel',
                'uses'      =>  'OrderController@cancel',
                'permission'=>  'order.edit'
            ]);
        });
    });

});
