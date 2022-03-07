<?php

Route::group(['namespace' => 'Botble\SocialTheme\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'social-themes', 'as' => 'social-theme.'], function () {
            Route::resource('', 'SocialThemeController')->parameters(['' => 'social-theme']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'SocialThemeController@deletes',
                'permission' => 'social-theme.destroy',
            ]);
        });
    });

});
