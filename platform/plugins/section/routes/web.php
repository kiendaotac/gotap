<?php

Route::group(['namespace' => 'Botble\Section\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'sections', 'as' => 'section.'], function () {
            Route::resource('', 'SectionController')->parameters(['' => 'section']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'SectionController@deletes',
                'permission' => 'section.destroy',
            ]);
        });
    });

});
