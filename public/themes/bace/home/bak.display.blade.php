@var('segments', $node->children)

@extends($site->theme.'::layouts.layout')

@section('content')

    <div class="section dark fullscreen">

        <div class="slideshow" data-slick='{"arrows": false, "dots": false, "infinite": true, "slidesToScroll": 1, "slidesToShow": 1, "fade": true, "speed": 900, "autoplay": true, "autoplaySpeed": 5000, "pauseOnHover": false, "cssEase": "linear"}'>
            <div class="slide">
                <div class="cell-holder">
                    <div class="cell">
                        <h1 class="identity massive alt"><a href="/">BACE</a></h1>
                    </div>
                </div>
            </div>
            <div class="slide">
                <div class="cell-holder">
                    <div class="cell">
                        <div class="container">
                            <div class="col-m-9 center-col">
                                <h3 class="alt">{!! strip_tags($body->content) !!}</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @if(!empty($body->image))
            <div class="slide">
                <div class="image" style="background-image: url({{$body->image}});"></div>
            </div>
            @endif
            <div class="slide">
                <div class="cell-holder">
                    <div class="cell">
                        <div class="container">
                            <div class="col-m-9 center-col">
                                <h3 class="alt">{!! strip_tags($extra->content) !!}</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @if(!empty($extra->media))
            <div class="slide">
                <div class="image" style="background-image: url({{$extra->media->external}});"></div>
            </div>
            @endif
        </div>
        <a href="#start" class="down-arrow-header arrowScroll no-ajaxy" title="go to"></a>
    </div>

    <div id="start">
        @if(!$segments->isEmpty())
            @foreach($segments as $segment)
                @var('pageTag', Node::findValue($segment, 'page-tag'))
                @var('theme', Node::findValue($segment, 'theme'))
                @var('banner', ((!empty($segment->media))?  $segment->media->external : null ))

                <a href="{{ $segment->redirect }}" class="section @if($theme == 'dark') dark @endif @if(!empty($banner)) banner @endif action"
                   @if(!empty($banner)) style="background-image: url({{ $banner }});" @endif >

                    @if(!empty($banner))
                        <div class="alternate">
                            <div class="overlay">
                                @if(!empty($pageTag))
                                    <h6 class="subtitle wide">{{ $pageTag }}</h6>
                                @endif
                                <div class="cell-holder">
                                    <div class="cell">
                                        <h2 class="title">{!! strip_tags($segment->body) !!}</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @else

                        <div class="overlay">
                            @if(!empty($pageTag))
                                <h6 class="subtitle wide">{{ $pageTag }}</h6>
                            @endif
                            <div class="cell-holder">
                                <div class="cell">
                                    <h2 class="title">{!! strip_tags($segment->body) !!}</h2>
                                </div>
                            </div>
                        </div>
                    @endif
                </a>
            @endforeach
        @endif
    </div>
@endsection