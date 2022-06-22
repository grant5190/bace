@php
    $banner = ((!empty($node->media))?  $node->media->external : 'http://placehold.it/2000x1200' );
@endphp

@extends($site->theme.'::layouts.layout')

@section('content')

    <div class="inner-scroll">
        <div class="parallax">
            <div class="section action" style="background-image: url( {{ $banner }})">
                <div class="alternate">
                    <div class="cell-holder">
                        <div class="cell">
                            <h1 class="title fadeout">{{ $body->title }}</h1>
                        </div>
                    </div>
                </div>

                <a href="#start" class="down-arrow-header arrowScroll no-ajaxy" title="go to"></a>
            </div>
        </div>

        <div class="grid-wrapper" id="start">

            <div class="container">
                <div class="inner-page contact-block" id="inner-page">

                    <div class="col-l-4">
                        <h3 class="title">{{ $body->title }}</h3>
                        <div class="services spaced">
                            {!! $body->content !!}
                        </div>
                    </div>
                    <div class="col-l-8 copy">
                        {!! $copy->content !!}

                        <div class="form-holder">
                            <form class="form" action="/form/contact" method="POST" enctype="multipart/form-data"
                                  id="form-contact">
                                {!! csrf_field() !!}

                                @if(Session::has('message'))
                                    <div class="{{ Session::get('class') }}"/>
                                    <p class="heavy">{{ Session::get('message') }}</p>
                                @endif

                                <div class="form-group">
                                    <label class="spaced-h" for="name">Full Name *</label>
                                    <input id="name" class="input @if($errors->has('name')) input-error @endif"
                                           name="name" type="text">
                                    @foreach ($errors->get('name') as $error)
                                        <div class="form-error">
                                            {{ $error }}
                                        </div>
                                    @endforeach
                                </div>

                                <div class="form-group">
                                    <label class="spaced-h" for="email">Email *</label>
                                    <input id="email" class="input @if($errors->has('email')) input-error @endif"
                                           name="email" type="text">
                                    @foreach ($errors->get('email') as $error)
                                        <div class="form-error">
                                            {{ $error }}
                                        </div>
                                    @endforeach
                                </div>


                                <div class="form-group">
                                    <label class="spaced-h" for="message">Message</label>
                                    <textarea id="message" class="input @if($errors->has('email')) input-error @endif"
                                              name="message"></textarea>
                                    @foreach ($errors->get('email') as $error)
                                        <div class="form-error">
                                            {{ $error }}
                                        </div>
                                    @endforeach
                                </div>

                                <button class="btn ghost send">Send</button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>

            @if(!empty($extra->media))
                <div class="parallax" id="pageBanner">
                    <div class="section" style="background-image: url({{ $extra->media->external }});">
                    </div>
                </div>
            @endif
        </div>
    </div>

    <div class="map-holder">
        <div class="map" id="map" data-lat="52.4858458" data-lng="-1.9069685" data-title="{{ $site->title }}">
        </div>
    </div>


    {{--

    <div class="section fullscreen dark contact">
        <div class="cell-holder">
            <div class="cell">
                <h1 class="identity alt"><a href="/">BACE</a></h1>
                <div class="container">
                    <div class="col-l-6">

                    </div>
                    <div class="col-l-6">
                        <div class="details">
                            <h4 class="callto"><a href="mailto::{{ $site->email }}" title="Let's work together">Let's work together</a></h4>
                            {!! $body->content !!}
                            <p class="social"><a href="#" target="_blank" title="Go to LinkedIn"><i class="fab fa-linkedin"></i></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    --}}

@stop
