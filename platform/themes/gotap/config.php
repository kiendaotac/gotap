<?php

use Botble\Theme\Theme;

return [

    /*
    |--------------------------------------------------------------------------
    | Inherit from another theme
    |--------------------------------------------------------------------------
    |
    | Set up inherit from another if the file is not exists,
    | this is work with "layouts", "partials" and "views"
    |
    | [Notice] assets cannot inherit.
    |
    */

    'inherit' => null, //default

    /*
    |--------------------------------------------------------------------------
    | Listener from events
    |--------------------------------------------------------------------------
    |
    | You can hook a theme when event fired on activities
    | this is cool feature to set up a title, meta, default styles and scripts.
    |
    | [Notice] these event can be override by package config.
    |
    */

    'events' => [
        'asset' => function($asset)
        {
            $asset->cook('select2-tailwind', function($asset)
            {
                $asset->usePath()->add('select2-tailwind', 'layoutone/assets/css/select2-tailwind.css');
            });
            $asset->cook('social-add-js', function ($asset) {
                $asset->container('footer')->usePath()->add('social-add', 'layoutone/assets/js/social-add.js');
            });
            $asset->cook('social-edit-js', function ($asset) {
                $asset->container('footer')->usePath()->add('social-edit', 'layoutone/assets/js/social-edit.js');
            });
            $asset->cook('custom-css-user', function ($asset) {
                $asset->usePath()->add('custom-css', 'layoutone/assets/css/custom.css');
                $asset->container('footer')->usePath()->add('navigatorJS', 'layoutone/assets/js/navigatorJS.min.js');
                $asset->container('footer')->usePath()->add('mobile-icon', 'layoutone/assets/js/mobile-icon.js', 'jquery');
            });
            $asset->cook('crop-image', function ($asset) {
                $asset->usePath()->add('cropper-css', 'layoutone/assets/css/cropper.css');
                $asset->container('footer')->usePath()->add('cropper', 'layoutone/assets/js/cropper.js');
                $asset->container('footer')->usePath()->add('crop-image', 'layoutone/assets/js/crop-image.js');
            });
            $asset->cook('qr', function ($asset) {
                $asset->container('footer')->usePath()->add('qrcode-with-logo', 'layoutone/assets/js/qrcode-with-logo.min.js');
                $asset->container('footer')->usePath()->add('qr', 'layoutone/assets/js/qr.js', 'qrcode-with-logo');
            });

            $asset->cook('product-details', function ($asset) {
                $asset->add('owl', '//cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css');
                $asset->usePath()->add('owl-css', 'homepage/assets/css/product-details.css');
//                $asset->add('owl-default', '//cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css');
                $asset->container('footer')->add('owl-js', '//cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js', 'jquery');
                $asset->container('footer')->usePath()->add('owl-setup', 'homepage/assets/js/product-details.js', 'owl-js');
            });

            $asset->cook('checkout', function ($asset) {
                $asset->container('footer')->usePath()->add('checkout-js', 'homepage/assets/js/checkout.js', 'jquery');
            });
        },

        // Before event inherit from package config and the theme that call before,
        // you can use this event to set meta, breadcrumb template or anything
        // you want inheriting.
        'before'             => function ($theme) {
            // You can remove this line anytime.
        },

        // Listen on event before render a theme,
        // this event should call to assign some assets,
        // breadcrumb template.
        'beforeRenderTheme'  => function (Theme $theme) {
            // Partial composer.
            // $theme->partialComposer('header', function($view) {
            //     $view->with('auth', \Auth::user());
            // });

            // You may use this event to set up your assets.
            $theme->asset()
                ->usePath()->add('tailwind', 'layoutone/assets/css/tailwind.min.css')
                ->usePath()->add('font-awesone', 'layoutone/assets/css/font-awesome.css')
                ->usePath()->add('style', 'layoutone/assets/css/styles.css');

            $theme->asset()->container('footer')
                ->usePath()->add('jquery', 'layoutone/assets/js/jquery-3.4.1.min.js')
                ->usePath()->add('jquery-ui', 'layoutone/assets/js/jquery-ui.min.js', 'jquery')
                ->usePath()->add('main', 'layoutone/assets/js/main.js', 'jquery-ui')
                ->usePath()->add('touch-punch', 'layoutone/assets/js/jquery.ui.touch-punch.min.js', 'jquery')
                ->usePath()->add('select2', 'layoutone/assets/js/select2.min.js', 'jquery')
                ->usePath()->add('mobile', 'layoutone/assets/js/mobile.js', 'jquery');

            if (function_exists('shortcode')) {
                $theme->composer(['index', 'page', 'post'], function (\Botble\Shortcode\View\View $view) {
                    $view->withShortcodes();
                });
            }
        },

        // Listen on event before render a layout,
        // this should call to assign style, script for a layout.
        'beforeRenderLayout' => [

            'default' => function ($theme) {

            },
            'tappi-master' => function($theme) {
                $theme->asset()
                ->usePath()->add('tailwind', 'layoutone/assets/css/tailwind.min.css')
                ->usePath()->add('font-awesone', 'layoutone/assets/css/font-awesome.css')
                ->usePath()->add('style', 'layoutone/assets/css/styles.css');

            $theme->asset()->container('footer')
                ->usePath()->add('jquery', 'layoutone/assets/js/jquery-3.4.1.min.js')
                ->usePath()->add('jquery-ui', 'layoutone/assets/js/jquery-ui.min.js', 'jquery')
                ->usePath()->add('main', 'layoutone/assets/js/main.js', 'jquery-ui')
                ->usePath()->add('touch-punch', 'layoutone/assets/js/jquery.ui.touch-punch.min.js', 'jquery')
                ->usePath()->add('select2', 'layoutone/assets/js/select2.min.js', 'jquery');
            },'tappi' => function($theme) {
                $theme->asset()
                    ->usePath()->add('tailwind', 'layoutone/assets/css/tailwind.min.css')
                    ->usePath()->add('font-awesone', 'layoutone/assets/css/font-awesome.css')
                    ->usePath()->add('custom-css', 'layoutone/assets/css/custom.css')
                    ->usePath()->add('style', 'layoutone/assets/css/styles.css');

                $theme->asset()->container('footer')
                    ->usePath()->add('jquery', 'layoutone/assets/js/jquery-3.4.1.min.js')
                    ->usePath()->add('jquery-ui', 'layoutone/assets/js/jquery-ui.min.js', 'jquery')
                    ->usePath()->add('navigatorJS', 'layoutone/assets/js/navigatorJS.min.js')
                    ->usePath()->add('main', 'layoutone/assets/js/main.js', 'jquery-ui')
                    ->usePath()->add('mobile', 'layoutone/assets/js/mobile.js')
                    ->usePath()->add('select2', 'layoutone/assets/js/select2.min.js', 'jquery');
            },'tappi-auth' => function($theme) {
                $theme->asset()
                ->usePath()->add('tailwind', 'layoutone/assets/css/tailwind.min.css')
                ->usePath()->add('font-awesone', 'layoutone/assets/css/font-awesome.css')
                ->usePath()->add('style', 'layoutone/assets/css/styles.css');

                $theme->asset()->container('footer')
                    ->usePath()->add('jquery', 'layoutone/assets/js/jquery-3.4.1.min.js')
                    ->usePath()->add('jquery-ui', 'layoutone/assets/js/jquery-ui.min.js', 'jquery')
                    ->usePath()->add('main', 'layoutone/assets/js/main.js', 'jquery-ui')
                    ->usePath()->add('select2', 'layoutone/assets/js/select2.min.js', 'jquery');
            },
            'tappi-profile' => function($theme) {
                $theme->asset()
                    ->usePath()->add('tailwind', 'layoutone/assets/css/tailwind.min.css')
                    ->usePath()->add('font-awesone', 'layoutone/assets/css/font-awesome.css')
                    ->usePath()->add('custom-css', 'layoutone/assets/css/custom.css')
                    ->usePath()->add('style', 'layoutone/assets/css/styles.css');
//                ->usePath()->add('navigatorJS', 'layoutone/assets/js/navigatorJS.min.js');

                $theme->asset()->container('footer')
                    ->usePath()->add('jquery', 'layoutone/assets/js/jquery-3.4.1.min.js')
                    ->usePath()->add('jquery-ui', 'layoutone/assets/js/jquery-ui.min.js', 'jquery')
                    ->usePath()->add('navigatorJS', 'layoutone/assets/js/navigatorJS.min.js')
                    ->usePath()->add('select2', 'layoutone/assets/js/select2.min.js')
                    ->usePath()->add('main', 'layoutone/assets/js/main.js', 'jquery-ui')
                    ->usePath()->add('mobile', 'layoutone/assets/js/mobile.js');
            },
            'tappi-add' => function ($theme) {
                $theme->asset()
                    ->usePath()->add('tailwind', 'layoutone/assets/css/tailwind.min.css')
                    ->usePath()->add('font-awesone', 'layoutone/assets/css/font-awesome.css')
                    ->usePath()->add('style', 'layoutone/assets/css/styles.css');
//                ->usePath()->add('select2-tailwind', 'layoutone/assets/css/select2-tailwind.css');

                $theme->asset()->container('footer')
                    ->usePath()->add('jquery', 'layoutone/assets/js/jquery-3.4.1.min.js')
                    ->usePath()->add('jquery-ui', 'layoutone/assets/js/jquery-ui.min.js', 'jquery')
                    ->usePath()->add('main', 'layoutone/assets/js/main.js', 'jquery-ui')
                    ->usePath()->add('select2', 'layoutone/assets/js/select2.min.js', 'jquery');
                $theme->asset()
                ->usePath()->add('select2-tailwind', 'layoutone/assets/css/select2-tailwind.css');
            },
            'tappi-profile-edit' => function($theme) {
                $theme->asset()
                    ->usePath()->add('tailwind', 'layoutone/assets/css/tailwind.min.css')
                    ->usePath()->add('font-awesone', 'layoutone/assets/css/font-awesome.css')
                    ->usePath()->add('custom-css', 'layoutone/assets/css/custom.css')
                    ->usePath()->add('style', 'layoutone/assets/css/styles.css');
//                ->usePath()->add('select2-tailwind', 'layoutone/assets/css/select2-tailwind.css');

                $theme->asset()->container('footer')
                    ->usePath()->add('jquery', 'layoutone/assets/js/jquery-3.4.1.min.js')
                    ->usePath()->add('jquery-ui', 'layoutone/assets/js/jquery-ui.min.js', 'jquery')
                    ->usePath()->add('main', 'layoutone/assets/js/main.js', 'jquery-ui')
                    ->usePath()->add('select2', 'layoutone/assets/js/select2.min.js', 'jquery');
                $theme->asset()
                    ->usePath()->add('cropper', 'layoutone/assets/css/cropper.css');
                $theme->asset()->container('footer')
                    ->usePath()->add('cropper', 'layoutone/assets/js/cropper.js', 'jquery');
            },
            'homepage' => function ($theme) {
                $theme->asset()
                    ->usePath()->add('bootstrap', 'homepage/assets/css/bootstrap.css')
                    ->usePath()->add('style', 'homepage/assets/css/style.css')
                    ->usePath()->add('onepage', 'homepage/assets/css/onepage.css')
                    ->usePath()->add('dark', 'homepage/assets/css/dark.css')
                    ->usePath()->add('font-icons', 'homepage/assets/css/font-icons.css')
                    ->usePath()->add('et-line', 'homepage/assets/css/et-line.css')
                    ->usePath()->add('animate', 'homepage/assets/css/animate.css')
                    ->usePath()->add('magnific-popup', 'homepage/assets/css/magnific-popup.css')
                    ->usePath()->add('fonts', 'homepage/assets/css/fonts.css')
                    ->usePath()->add('custom', 'homepage/assets/css/custom.css')
                    ->usePath()->add('main', 'homepage/assets/css/main.css');
                $theme->asset()->container('footer')
                    ->usePath()->add('jquery', 'homepage/assets/js/jquery.js')
                    ->usePath()->add('boostrap', 'homepage/assets/js/bootstrap.min.js', 'jquery')
                    ->usePath()->add('popper', 'homepage/assets/js/popper.min.js', 'bootstrap')
                    ->usePath()->add('plugins', 'homepage/assets/js/plugins.min.js')
                    ->usePath()->add('functions', 'homepage/assets/js/functions.js')
                ;
            }
        ]
    ]
];
