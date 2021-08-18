<?php

Route::group(['namespace' => 'Botble\Portfolio\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'portfolios', 'as' => 'portfolio.'], function () {
            Route::resource('', 'PortfolioController')->parameters(['' => 'portfolio']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'PortfolioController@deletes',
                'permission' => 'portfolio.destroy',
            ]);
        });
    });

});
