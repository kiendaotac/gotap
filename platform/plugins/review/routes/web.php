<?php

Route::group(['namespace' => 'Botble\Review\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'reviews', 'as' => 'review.'], function () {
            Route::resource('', 'ReviewController')->parameters(['' => 'review']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'ReviewController@deletes',
                'permission' => 'review.destroy',
            ]);
        });
    });

});
