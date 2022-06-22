<!DOCTYPE html>
<!--[if lt IE 9 ]>
<html class="no-js lt-ie10 lt-ie9"> <![endif]-->
<!--[if IE 9 ]>
<html class="no-js ie9 lt-ie10"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html class="no-js lt-ie100"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>@if(!empty($node->meta_title)) {{ $node->meta_title }} @elseif(isset($node->title)){{ $node->title }}@endif | {{ $site->title }}</title>
    <meta name="description" content="@if (isset($node->dscpn)){{ $node->dscpn }} @else {{ $site->dscpn }} @endif">
    <meta name="viewport" content="width=device-width">
    <meta name="author" content="{{ $site->title }}" />
    <meta name="copyright" content="{{ $site->title }}" />
    <meta name="keywords" content="@if (isset($node->keywords)){{ $node->keywords }} @else {{ $site->keywords }} @endif">

    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/manifest.json">
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#000000">
    <meta name="theme-color" content="#ffffff">

    @if(!empty($node))
        @if($node->url_slug !== '/home' )
            <link rel="canonical" href="http://www.{{ $site->domain }}{{ $node->url_slug }}"/>
            <meta property="og:url" content="http://www.{{ $site->domain }}{{ $node->url_slug }}">
        @else
            <link rel="canonical" href="http://www.{{ $site->domain }}"/>
            <meta property="og:url" content="http://www.{{ $site->domain }}">
        @endif
    @endif

    {{-- Facebook --}}
    <meta property="og:title" content="@if(!empty($node->meta_title)) {{ $node->meta_title }} @elseif(isset($node->title)){{ $node->title }} @else {{ $site->title }} @endif">
    <meta property="og:type" content="website">
    <meta property="og:image" content="@if(!empty($node->image)) http://{{ $site->domain }}{{$node->media->external}}/300x300 @endif ">
    <meta property="og:site_name" content="{{ $site->title }}">
    <meta property="og:description" content="@if (isset($node->dscpn)){{ $node->dscpn }} @else {{ $site->dscpn }} @endif">
    {{-- Twitter Extends --}}
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@if(!empty($node->meta_title)) {{ $node->meta_title }} @elseif(isset($node->title)){{ $node->title }} @else {{ $site->title }} @endif">
    <meta name="twitter:creator" content="{{ $site->title }}">

    <script src="/themes/{{ $site->theme }}/assets/js/modernizr-custom.js"></script>
    <link rel="stylesheet" href="/themes/{{ $site->theme }}/assets/css/template.css?v=1.4">
    <link rel="stylesheet" href="https://api.tiles.mapbox.com/mapbox-gl-js/v0.53.1/mapbox-gl.css" />


    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-DKQ3BKQTN0"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'G-DKQ3BKQTN0');
    </script>


@section('styles')
    @show
</head>