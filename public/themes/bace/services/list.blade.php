@php
    $pageTag = Node::findValue($node, 'page-tag');
    $theme = Node::findValue($node, 'theme');
    $banner = ((!empty($node->media))?  $node->media->external : 'http://placehold.it/2000x1200' );
    $ignoreSeg = ['experience'];
    $subNav = $node->children;

    $footerCol = explode('<hr />', $footer->content);

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
                        <h3 class="title">Services</h3>
                        <div class="services">

                            <ul class="sub-nav">
                                @foreach($subNav as $childItem)
                                    <li><a href="{{ $childItem->url_slug }}" class=""
                                           id="nav-directors">{{ $childItem->title }}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>

                    <div class="grid-content">

                        <div class="page-segment srblock intro">
                            <div class="col-l-12">
                                {!! $body->content !!}

                                <div class="row">
                                    <div class="row">
                                    @foreach($footerCol as $col)
                                        <div class="col-m-6">
                                            {!! trim($col) !!}
                                        </div>
                                    @endforeach
                                    </div>
                                </div>




                                {{--
                                {!! $footer->content !!}
                                <h5>Services provided</h5>
                                <div class="row">
                                    <div class="col-l-6">
                                        <ul class="services">
                                            <li><span>Residential</span></li>
                                            <li><span>Commercial</span></li>
                                            <li><span>Education</span></li>
                                            <li><span>Healthcare</span></li>
                                        </ul>
                                    </div>
                                    <div class="col-l-6">
                                        <ul class="services">
                                            <li><span>Hotel &amp; Leisure</span></li>
                                            <li><span>Retail</span></li>
                                            <li><span>Automotive</span></li>
                                            <li><span>New Build</span></li>
                                            <li><span>Refurbishment</span></li>
                                        </ul>
                                    </div>
                                </div>
                                --}}

                            </div>
                        </div>


                        @if(!empty($list))
                            <div class="row">


                                @foreach($list as $item)

                                    @php
                                        $extra = $item->blocks->where('name', 'extra')->first();
                                        $image = '';
                                        if(!empty($extra->media)) {
                                             $image = $extra->media->external.'/700x475';
                                        } else {
                                            $image = ((!empty($item->media))?  $item->media->external.'/700x475': 'http://placehold.it/700x475');
                                        }

                                    @endphp



                                    <a class="col-m-6 news-block" href="{{ $item->url_slug }}">
                                        <div class="inner">
                                            <div class="preview">
                                                <img src="{{ $image }}">
                                            </div>
                                            <h4 class="ntitle">{{ $item->title }}</h4>
                                        </div>
                                    </a>

                                @endforeach
                            </div>
                        @endif

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