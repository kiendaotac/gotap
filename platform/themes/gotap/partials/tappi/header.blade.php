<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

<head>
    <meta charSet="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no" />

    {!! Theme::header() !!}

    <noscript data-n-css="true"></noscript>
</head>

<body @if (BaseHelper::siteLanguageDirection() == 'rtl') dir="rtl" @endif class="text-gray-800 antialiased">
<div id="page-transition"></div>
<div id="__next">
    <main class="profile-page">
        <div class="profile-type-1 max-w-3xl m-auto">