<header id="header" class="full-header transparent-header border-full-header header-size-custom"
        data-sticky-shrink="false" data-sticky-offset="full" data-sticky-offset-negative="200">
    <div id="header-wrap">
        <div class="container">
            <div class="header-row">
                <div id="logo">
                    <a href="{{ route('public.index') }}" class="standard-logo" data-dark-logo="{{ RvMedia::getImageUrl(theme_option('logo')) }}">
                        <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}">
                    </a>
                    <a href="{{ route('public.index') }}" class="retina-logo" data-dark-logo="{{ RvMedia::getImageUrl(theme_option('logo')) }}">
                        <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}">
                    </a>
                </div>
                <!-- #logo end -->
<!--                <div class="header-misc">
                    <div class="side-panel-trigger header-misc-icon">
                        <a href="#"><i class="icon-ellipsis-v"></i></a>
                    </div>

                </div>

                <div id="primary-menu-trigger">
                    <svg class="svg-trigger" viewBox="0 0 100 100">
                        <path
                                d="m 30,33 h 40 c 3.722839,0 7.5,3.126468 7.5,8.578427 0,5.451959 -2.727029,8.421573 -7.5,8.421573 h -20">
                        </path>
                        <path d="m 30,50 h 40"></path>
                        <path d="m 70,67 h -40 c 0,0 -7.5,-0.802118 -7.5,-8.365747 0,-7.563629 7.5,-8.634253 7.5,-8.634253 h 20"></path>
                    </svg>
                </div>-->

                <!-- Primary Navigation
                ============================================= -->
                <nav class="primary-menu">
                    {!!
                        Menu::renderMenuLocation('main-menu-home-page', [
                            'options' => [
                                    'class' =>  'one-page-menu menu-container',
                                    'data-easing'   =>  'easeInOutExpo',
                                    'data-speed'    =>  1250,
                                    'data-offset'   =>  65
                                ],
                            'theme' => true,
                            'view' => 'homepage.main-menu',
                        ])
                    !!}
                </nav>
                <!-- #primary-menu end -->

            </div>
        </div>
    </div>
    <div class="header-wrap-clone"></div>
</header><!-- #header end -->
