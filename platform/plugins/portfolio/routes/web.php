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
    Route::get('regex', function (){
        return '<script>window.location = "fb://kiendaotac"</script>';
        return redirect('https://zalo.me/0985108032');
        return redirect('fb://profile?id=kiendaotac');
        return redirect('fb://facewebmodal/f?href=https://www.facebook.com/kiendaotac');
    });
    Route::get('regex-ios', function (){
        return redirect('fb://profile?id=kiendaotac');
    });
});
