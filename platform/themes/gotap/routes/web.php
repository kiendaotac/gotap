<?php

// Custom routes
// You can delete this route group if you don't need to add your custom routes.
//use Theme\Gotap\Http\Controllers\TapController;

Route::group(['namespace' => 'Theme\Gotap\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {


        // Add your custom route here
        // Ex: Route::get('hello', 'GotapController@getHello');
        Route::group(['as' => 'public.member.'], function (){
            Route::get('tap/{uuid}', [
                'as'    => 'tap.index',
                'uses'  => 'TapController@show'
            ]);
            Route::get('qr/{uuid}', [
                'as'    => 'qr.index',
                'uses'  => 'PublicController@getQR'
            ]);
            Route::get('user/{username}', [
                'as'   => 'user.index',
                'uses' => 'TapController@index',
            ]);

            Route::post('add-to-cart', [
                'as'    => 'add-to-cart',
                'uses'  => 'GotapController@addToCart'
            ]);
        });

        Route::group([], function (){
            Route::get('/product/{id}', 'GotapController@getDetails')
                ->name('public.product.details');

            Route::get('/checkout', 'GotapController@getCheckout')
                ->name('public.checkout');

            Route::post('/checkout', 'GotapController@postCheckout')
                ->name('public.checkout.post');
        });

        Route::group(['middleware' => ['member.guest'], 'as' => 'public.member.'], function () {
            Route::get('login', 'LoginController@showLoginForm')->name('login');
            Route::post('login', 'LoginController@login')->name('login.post');
            Route::get('register', 'RegisterController@showRegistrationForm')->name('register');
            Route::get('password/request', 'ForgotPasswordController@showLinkRequestForm')->name('password.request');
            Route::post('password/email', 'ForgotPasswordController@sendResetLinkEmail')->name('password.email');
            Route::post('register', 'RegisterController@register')->name('register.post');
            Route::get('password/reset/{token}', 'ResetPasswordController@showResetForm')->name('password.reset');
            Route::post('password/reset', 'ResetPasswordController@reset')->name('password.update');
            /*Route::get('verify', 'RegisterController@getVerify')->name('verify');
            */
        });

        // Đã đăng nhập
        Route::group(['middleware' => ['web', 'member'], 'as' => 'public.member.'], function () {
            Route::group([], function () {
                Route::get('logout', 'LoginController@logout')->name('logout');

                Route::get('profile', [
                    'as'   => 'profile.index',
                    'uses' => 'PublicController@getDashboard',
                ]);
                Route::get('profile/edit', [
                    'as'   => 'profile.edit',
                    'uses' => 'PublicController@editProfile',
                ]);
                Route::post('profile/update', [
                    'as'   => 'profile.update',
                    'uses' => 'PublicController@updateProfile',
                ]);
                Route::get('profile/social', [
                    'as'   => 'profile.social',
                    'uses' => 'PublicController@indexProfileSocial',
                ]);
                Route::get('profile/social/add', [
                    'as'   => 'profile.social.add',
                    'uses' => 'PublicController@addProfileSocial',
                ]);
                Route::post('profile/social/add', [
                    'as'   => 'profile.social.store',
                    'uses' => 'PublicController@storeProfileSocial',
                ]);
                Route::put('profile/social/update', [
                    'as'   => 'profile.social.update.position',
                    'uses' => 'PublicController@updatePositionSocial',
                ]);
                Route::get('profile/social/{id}/edit', [
                    'as'   => 'profile.social.edit',
                    'uses' => 'PublicController@editProfileSocial',
                ]);
                Route::put('profile/social/{id}/update', [
                    'as'   => 'profile.social.update',
                    'uses' => 'PublicController@updateProfileSocial',
                ]);

                Route::post('profile/avatar', [
                    'as'   => 'profile.avatar.store',
                    'uses' => 'PublicController@storeAvatar',
                ]);
                Route::post('profile/cover', [
                    'as'   => 'profile.cover.store',
                    'uses' => 'PublicController@storeCover',
                ]);

                Route::delete('profile/social/delete/{id}', [
                    'as'    =>  'profile.social.delete',
                    'uses'  =>  'PublicController@deleteSocialItem'
                ]);

                Route::get('profile/layout', [
                    'as'   => 'profile.layout.index',
                    'uses' => 'PublicController@listLayout',
                ]);

                Route::put('profile/layout/{id}', [
                    'as'   => 'profile.layout.update',
                    'uses' => 'PublicController@updateLayout',
                ]);
                Route::get('profile/general', [
                    'as'   => 'profile.general.index',
                    'uses' => 'PublicController@getGeneral',
                ]);

                Route::get('profile/change-password', [
                    'as'   => 'profile.changepassword.index',
                    'uses' => 'ResetPasswordController@showChangePasswordForm',
                ]);

                Route::post('profile/change-password', [
                    'as'   => 'profile.changepassword.store',
                    'uses' => 'ResetPasswordController@storePassword',
                ]);
                /*Route::get('settings', [
                    'as'   => 'settings',
                    'uses' => 'PublicController@getSettings',
                ]);

                Route::post('settings', [
                    'as'   => 'post.settings',
                    'uses' => 'PublicController@postSettings',
                ]);

                Route::get('security', [
                    'as'   => 'security',
                    'uses' => 'PublicController@getSecurity',
                ]);

                Route::put('security', [
                    'as'   => 'post.security',
                    'uses' => 'PublicController@postSecurity',
                ]);

                Route::post('avatar', [
                    'as'   => 'avatar',
                    'uses' => 'PublicController@postAvatar',
                ]);*/

            });

            /*Route::group(['prefix' => 'ajax/members'], function () {
                Route::get('activity-logs', [
                    'as'   => 'activity-logs',
                    'uses' => 'PublicController@getActivityLogs',
                ]);

                Route::post('upload', [
                    'as'   => 'upload',
                    'uses' => 'PublicController@postUpload',
                ]);
            });*/

        });
    });
});

Theme::routes();

Route::group(['namespace' => 'Theme\Gotap\Http\Controllers', 'middleware' => ['web', 'core']], function () {
    Route::group(apply_filters(BASE_FILTER_GROUP_PUBLIC_ROUTE, []), function () {

        Route::get('/', 'GotapController@getIndex')
            ->name('public.index');

        Route::get('sitemap.xml', 'GotapController@getSiteMap')
            ->name('public.sitemap');

        Route::get('{slug?}' . config('core.base.general.public_single_ending_url'), 'GotapController@getView')
            ->name('public.single');

    });
});
