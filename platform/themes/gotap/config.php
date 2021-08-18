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
           /* $theme->asset()
                ->usePath()->add('tailwind', 'layoutone/assets/css/tailwind.min.css')
                ->usePath()->add('font-awesone', 'layoutone/assets/css/font-awesome.css')
                ->usePath()->add('style', 'layoutone/assets/css/styles.css');
//                ->usePath()->add('select2-tailwind', 'layoutone/assets/css/select2-tailwind.css');

            $theme->asset()->container('footer')
                ->usePath()->add('jquery', 'layoutone/assets/js/jquery-3.4.1.min.js')
                ->usePath()->add('jquery-ui', 'layoutone/assets/js/jquery-ui.min.js', 'jquery')
                ->usePath()->add('main', 'layoutone/assets/js/main.js', 'jquery-ui')
                ->usePath()->add('select2', 'layoutone/assets/js/select2.min.js', 'jquery');*/

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
                    ->usePath()->add('custom', 'homepage/assets/css/custom.css');
                $theme->asset()->container('footer')
                    ->usePath()->add('jquery', 'homepage/assets/js/jquery.js')
                    ->usePath()->add('plugins', 'homepage/assets/js/plugins.min.js')
                    ->usePath()->add('functions', 'homepage/assets/js/functions.js')
                ;
            }
        ]
    ]
];
