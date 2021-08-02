<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

{!! Theme::partial('tappi-profile.header') !!}

<body class="text-gray-800 antialiased">
<div id="page-transition"></div>
<div id="__next">
    <div class="relative max-w-3xl m-auto layout-with-bottom-menu">
        <div class="md:px-10 mx-auto w-full">
            <div class="relative bg-white max-w-3xl m-auto">
                {!! Theme::content() !!}
                {!! Theme::partial('tappi-profile.footer') !!}
            </div>
            {!! Theme::partial('tappi-profile.menu') !!}
        </div>
    </div>
</div>
{!! Theme::footer() !!}
</body>

</html>