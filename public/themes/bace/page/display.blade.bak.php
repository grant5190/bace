@php
    $pageTag = Node::findValue($node, 'page-tag');
    $theme = Node::findValue($node, 'theme');
    $banner = ((!empty($node->media))?  $node->media->external : 'http://placehold.it/2000x1200' );
    $segments = $node->children->sortBy('order');
    $ignoreSeg = ['experience']
@endphp


@extends($site->theme.'::layouts.layout')

@section('content')

    w<div class="inner-scroll">
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

                <div class="inner-page" id="inner-page">

                    <div class="fixed-filters">
                        <h4 class="title">{{ $colone->title }}</h4>
                        <div class="services">
                            <ul class="sub-nav">
                                @foreach($segments as $segment)
                                    @if(!in_array($segment->tag, $ignoreSeg))
                                    <li><a href="#{{ $segment->tag }}" class="scrollTo no-ajaxy"
                                           title="{{ $segment->title }}"
                                           id="nav-{{ $segment->tag }}">{{ $segment->title }}</a></li>
                                    @endif
                                @endforeach
                            </ul>
                        </div>
                    </div>

                    <div class="grid-content">


                        <div class="page-segment srblock intro">
                            <div class="col-l-12">
                                {!! $body->content !!}
                            </div>
                        </div>


                        @foreach($segments as $segment)
                            @if(!in_array($segment->tag, $ignoreSeg))
                            @var('scolone', $segment->blocks->where('name', 'colone')->first())

                            <div class="page-segment srblock" id="{{ $segment->tag }}">
                                <div class="col-l-12">
                                    <h4 class="title">{{ $segment->title }}</h4>
                                </div>
                                <div class="row">
                                    <div class="col-l-6 textual">
                                        {!! $segment->body !!}
                                    </div>
                                    <div class="col-l-6 textual">
                                        {!! $scolone->content !!}
                                    </div>
                                </div>
                            </div>
                            @endif
                        @endforeach
                    </div>

                </div>
            </div>

            @if($node->tag == 'services')
                <div class="section free @if($theme == 'dark') dark @endif">
                    <div class="none-overlay">
                        <div class="cell-holder">
                            <div class="cell">
                                <div class="video">
                                    <video loop="loop" muted="muted" playsinline="playsinline" width="900"
                                           id="expertise-diagram" autoplay>
                                        <source src="/themes/{{ $site->theme }}/assets/videos/expertise-diagram.mp4"
                                                type="video/mp4">
                                        <source src="/themes/{{ $site->theme }}/assets/videos/expertise-diagram.webm"
                                                type="video/webm">
                                    </video>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                @php
                    $experience = $node->children->where('tag', 'experience')->first();
                @endphp

                <div class="experience">

                    <header>
                        <div class="cell-holder">
                            <div class="cell">
                                <div class="container">
                                    <div class="col-l-8 center-col intro">
                                        {!! $experience->body !!}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </header>

                    <div class="container-full">
                        <div class="row experiences">
                            @if(!empty($experience->children))
                                @foreach($experience->children as $item)
                                    @var('image', ((!empty($item->media))?  $item->media->external.'/700x475' : 'http://placehold.it/700x475'))
                                    <div class="col-m-6 col-xl-4 item">
                                        <img src="{{ $image }}" alt="{{ $item->title }}">
                                        <div class="inner">
                                            <div class="cell-holder">
                                                <div class="cell">
                                                    <h4 class="title">{{ $item->title }}</h4>
                                                </div>
                                            </div>
                                        </div>
                                        {{--
                                        Commented out so we can pull this back in again when needed
                                        <div class="overlay">
                                            <div class="cell-holder">
                                                <div class="cell">
                                                    {!! $item->body !!}
                                                </div>
                                            </div>
                                        </div>
                                        --}}
                                    </div>
                                @endforeach
                            @endif
                        </div>
                    </div>
                </div>


            @endif


            @if(!empty($footer->media))

                <div class="parallax" id="pageBanner">
                    <div class="section" style="background-image: url({{ $footer->media->external }});">


                    </div>


                </div>


            @endif

        </div>
    </div>

@endsection