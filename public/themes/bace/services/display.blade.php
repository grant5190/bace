@php
    $banner = ((!empty($node->media))?  $node->media->external : 'http://placehold.it/2000x1200' );
    $subNav = $node->parent_node->children;

    $examples = Snippets::getGroup($site, $node->tag.'-projects')->snippet;

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

                <div class="inner-page" id="inner-page">

                    <div class="fixed-filters">
                        <h3 class="title"><a href="/services" >Services</a></h3>
                        <div class="services">
                        <ul class="sub-nav">
                            @foreach($subNav as $childItem)
                                <li><a href="{{ $childItem->url_slug }}" class="@if($node->tag === $childItem->tag) active @endif" id="nav-directors">{{ $childItem->title }}</a></li>
                            @endforeach
                        </ul>
                        </div>
                    </div>

                    <div class="grid-content">
                        <div class="page-segment srblock intro">
                            <div class="col-l-12">
                                <h3 class="title service-title">{{ $node->title }}</h3>
                                <div class="service-copy">
                                    {!! $body->content !!}
                                    {!! $colone->content !!}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-gallery">
                <div class="container">
                    <div class="row">
                        <div class="row">

                            @foreach($examples as $example)

                                @if($example->publish)

                                @php
                                    $image = 'http://placehold.it/700x475';
                                    if(!empty($example->media)) {
                                        $image = $example->media->external.'/700x475';
                                    }
                                @endphp
                                <div class="col-m-6 col-l-4 news-block">
                                    <div class="inner">
                                        <div class="preview">
                                            <img src="{{ $image }}" >
                                        </div>
                                        <h4 class="ntitle">{{ $example->title }}</h4>
                                        <p class="tiny date fixed-height">{{ strip_tags($example->body) }}</p>
                                    </div>
                                </div>
                                @endif
                            @endforeach

                            {{--
                            <div class="col-m-6 col-l-4 news-block">
                                <div class="inner">
                                    <div class="preview">
                                        <img src="http://placehold.it/700x475" >
                                    </div>
                                    <h4 class="ntitle">Project Title</h4>
                                    <p class="tiny date">Location & Value</p>
                                </div>
                            </div>
                            <div class="col-m-6 col-l-4 news-block">
                                <div class="inner">
                                    <div class="preview">
                                        <img src="http://placehold.it/700x475" >
                                    </div>
                                    <h4 class="ntitle">Project Title</h4>
                                    <p class="tiny date">Location & Value</p>
                                </div>
                            </div>
                            --}}
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

@endsection