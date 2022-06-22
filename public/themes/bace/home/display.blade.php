@php
    //$banner = ((!empty($node->media))? $node->media->external : null );
    $homeslides = Snippets::getGroup($site, 'homepageslides')->snippet;
@endphp


@extends($site->theme.'::layouts.layout')

@section('content')

    {{--
        <div class="banner-video waypoint bkg" data-nav-color="light" style="background-image: url({{ $banner }});">
    --}}
    <div class="banner-video waypoint bkg" data-nav-color="light">
        <div class="video-holder" id="show-banner">
            <video data-object-fit autoplay muted loop playsinline preload="auto" width="1920" id="banner-video"
                    src="/vmedia/bace-banner-alt-6.mp4">
                <source src="/vmedia/bace-banner-alt-6.mp4" type="video/mp4">
                Your browser does not support video.
            </video>
            <a href="#start" class="down-arrow-header arrowScroll no-ajaxy" title="go to"></a>
        </div>

        {{--
        <div class="overlay" id="start">
            <div class="slideshow"
                 data-slick='{"arrows": false, "dots": false, "infinite": true, "slidesToScroll": 1, "slidesToShow": 1, "fade": true, "speed": 900, "autoplay": true, "autoplaySpeed": 5000, "pauseOnHover": false, "cssEase": "linear"}'>

                @if(!empty($homeslides))
                    @foreach($homeslides as $slide)
                        <div class="slide">
                            <div class="cell-holder">
                                <div class="cell">
                                    <h1 class="home-title ">{{ $slide->title }}</h1>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
        --}}


        <a href="#start" class="down-arrow-header arrowScroll no-ajaxy" title="go to"></a>

    </div>

    <div id="start">
        <div class="inner-scroll">
            <div class="grid-wrapper">

                <header>
                    <div class="cell-holder">
                        <div class="cell">
                            <div class="container">
                                <div class="col-l-8 center-col intro home-intro srblock">
                                    <h2 class="identity massive alt "><a href="/">BACE</a></h2>

                                    {!! $body->content !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </header>


                <div class="section dark free">
                    <div class="cell-holder">
                        <div class="cell">
                            <div class="triangle">
                                @include($site->theme.'::partials.triangle')
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>

@endsection