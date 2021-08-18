<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
{!! Theme::partial('tappi-profile.header') !!}
<body class="text-gray-800 antialiased">
<div id="page-transition"></div>
{!! Theme::content() !!}
{!! Theme::partial('tappi-profile.footer') !!}
{!! Theme::footer() !!}
</body>
</html>