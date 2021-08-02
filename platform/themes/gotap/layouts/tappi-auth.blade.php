<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

{!! Theme::partial('tappi-auth.header') !!}

<body class="text-gray-800 antialiased">
<div id="page-transition"></div>
<div id="__next">
    <nav class="top-0 absolute z-50 w-full flex flex-wrap items-center justify-between px-2 py-3 navbar-expand-lg">
        <div class="container px-4 mx-auto flex flex-wrap items-center justify-between">
            <div class="w-full relative flex justify-between lg:w-auto lg:static lg:block lg:justify-start">
                <div class="cursor-pointer text-white text-sm font-bold leading-relaxed inline-block mr-4 whitespace-no-wrap uppercase  max-w-7" href="#pablo">
                    <img class="mb-03" src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('site_title') }}"/>
                </div>
                <button class="cursor-pointer text-xl leading-none px-3 py-1 border border-solid border-transparent rounded bg-transparent block lg:hidden outline-none focus:outline-none" type="button">
                    <i class="text-white fas fa-bars"></i>
                </button>
            </div>
            <div class="lg:flex flex-grow items-center bg-white lg:bg-transparent lg:shadow-none hidden" id="example-navbar-warning">
                <ul class="flex flex-col lg:flex-row list-none lg:ml-auto">
                    <li class="flex items-center">
                        <a class="lg:text-white lg:hover:text-gray-300 text-gray-800 px-3 py-4 lg:py-2 flex items-center text-xs uppercase font-bold" href="{{ theme_option('facebook') }}" target="_blank">
                            <i class="lg:text-gray-300 text-gray-500 fab fa-facebook text-lg leading-lg "></i>
                            <span class="lg:hidden inline-block ml-2">Facebook</span>
                        </a>
                    </li>
                    <li class="flex items-center">
                        <a class="lg:text-white lg:hover:text-gray-300 text-gray-800 px-3 py-4 lg:py-2 flex items-center text-xs uppercase font-bold" href="{{ theme_option('instagram') }}" target="_blank">
                            <i class="lg:text-gray-300 text-gray-500 fab fa-instagram text-lg leading-lg "></i>
                            <span class="lg:hidden inline-block ml-2">Instagram</span>
                        </a>
                    </li>
                    <li class="flex items-center">
                        <a class="lg:text-white lg:hover:text-gray-300 text-gray-800 px-3 py-4 lg:py-2 flex items-center text-xs uppercase font-bold" href="{{ theme_option('tiktok') }}" target="_blank">
                            <i class="lg:text-gray-300 text-gray-500 fab fa-tiktok text-lg leading-lg "></i>
                            <span class="lg:hidden inline-block ml-2">TikTok</span>
                        </a>
                    </li>
                    <li class="flex items-center">
                        <a class="lg:text-white lg:hover:text-gray-300 text-gray-800 px-3 py-4 lg:py-2 flex items-center text-xs uppercase font-bold" href="{{ theme_option('youtube') }}" target="_blank">
                            <i class="lg:text-gray-300 text-gray-500 fab fa-youtube text-lg leading-lg "></i>
                            <span class="lg:hidden inline-block ml-2">Youtube</span>
                        </a>
                    </li>
                    <li class="flex items-center">

                        <a class="bg-white text-gray-800 active:bg-gray-100 text-xs font-bold uppercase px-4 py-2 rounded shadow hover:shadow-md outline-none focus:outline-none lg:mr-1 lg:mb-0 ml-3 mb-3 ease-linear transition-all duration-150" href="{{ asset('/') }}">
                            Go to shop
                            <i class="fas fa-arrow-alt-circle-right"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <main>
        <section class="relative w-full h-full py-32 min-h-screen">
            <div class="absolute top-0 w-full h-full bg-gray-900 bg-no-repeat bg-full" style="background-image:url('{{ Theme::asset()->url('layoutone/assets/images/register-background.png') }}')"></div>
            {!! Theme::content() !!}
            {!! Theme::partial('tappi-auth.footer') !!}
        </section>
    </main>
</div>
{!! Theme::footer() !!}
</body>
</html>