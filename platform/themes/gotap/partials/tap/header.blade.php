<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=5, user-scalable=1" name="viewport"/>

    {!! Theme::header() !!}
</head>
<body @if (BaseHelper::siteLanguageDirection() == 'rtl') dir="rtl" @endif>
<div class="content-wrapper">
    <header class="wrapper bg-soft-primary">
        <nav class="navbar center-nav transparent navbar-expand-lg navbar-light">
            <div class="container flex-lg-row flex-nowrap align-items-center">
                <div class="navbar-brand w-100">
                    <a href="{{ route('public.single') }}">
                        @if (theme_option('logo-dark'))
                            <img src="{{ RvMedia::getImageUrl(theme_option('logo-dark')) }}" srcset="{{ RvMedia::getImageUrl(theme_option('logo-dark')) }} 2x" alt="{{ theme_option('site_title') }}" />
                        @endif
                    </a>
                </div>
                <div class="navbar-collapse offcanvas-nav">
                    <div class="offcanvas-header d-lg-none d-xl-none">
                        <a href="{{ route('public.single') }}">
                            @if (theme_option('logo'))
                                <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" srcset="{{ RvMedia::getImageUrl(theme_option('logo')) }} 2x" alt="{{ theme_option('site_title') }}" />
                            @endif
                        </a>
                        <button type="button" class="btn-close btn-close-white offcanvas-close offcanvas-nav-close" aria-label="Close"></button>
                    </div>
                    {!!
                        Menu::renderMenuLocation('main-menu', [
                            'view'    => 'tap.main-menu',
                            'options' => [
                                'class' => 'navbar-nav'
                            ]
                        ])
                    !!}
                    <!-- /.navbar-nav -->
                </div>
                <!-- /.navbar-collapse -->
                <div class="navbar-other w-100 d-flex ms-auto">
                    <ul class="navbar-nav flex-row align-items-center ms-auto" data-sm-skip="true">
                        {!! apply_filters('language_select') !!}
                        @guest('member')
                        <li class="nav-item d-none d-md-block">
                            <a href="{{ route('public.member.login') }}" class="btn btn-sm btn-primary rounded-pill">{{ __('Login') }}</a>
                        </li>
                        @endguest
                        <li class="nav-item d-lg-none">
                            <div class="navbar-hamburger"><button class="hamburger animate plain" data-toggle="offcanvas-nav"><span></span></button></div>
                        </li>
                    </ul>
                    <!-- /.navbar-nav -->
                </div>
                <!-- /.navbar-other -->
            </div>
            <!-- /.container -->
        </nav>
        <!-- /.navbar -->
    </header>
    <!-- /header -->