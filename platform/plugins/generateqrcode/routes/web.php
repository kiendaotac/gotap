<?php

Route::group(['namespace' => 'Botble\Generateqrcode\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'generateqrcodes', 'as' => 'generateqrcode.'], function () {
            Route::resource('', 'GenerateqrcodeController')->parameters(['' => 'generateqrcode'])->only(['index', 'store', 'create']);
//            Route::delete('items/destroy', [
//                'as'         => 'deletes',
//                'uses'       => 'GenerateqrcodeController@deletes',
//                'permission' => 'generateqrcode.destroy',
//            ]);
        });
    });

});
