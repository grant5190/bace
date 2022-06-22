@var('pageTag', Node::findValue($node, 'page-tag'))
@var('theme', Node::findValue($node, 'theme'))
@var('banner', ((!empty($node->media))?  $node->media->external : 'http://placehold.it/2000x1200' ))
@var('segments', $node->children->sortBy('order'))


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

                        <h3 class="title">{{ $body->title }}</h3>
                        <div class="services">
                            <ul class="sub-nav">
                                @foreach($segments as $segment)
                                    <li><a href="#{{ $segment->tag }}" class="scrollTo no-ajaxy" title="{{ $segment->title }}" id="nav-{{ $segment->tag }}">{{ $segment->title }}</a></li>
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

                        @if(!$segments->isEmpty())



                        @foreach($segments as $segment)
                            @var('scolone', $segment->blocks->where('name', 'colone')->first())

                            <div class="page-segment srblock career-block" id="{{ $segment->tag }}">
                                <div class="col-l-12">
                                <h4 class="title">{{ $segment->title }}</h4>
                                </div>
                                <div class="row">
                                    <div class="col-l-6 textual">
                                        {!! $segment->body !!}
                                    </div>
                                    <div class="col-l-6 textual">
                                        {!! $scolone->content !!}

                                        <p>To apply please email a covering letter<br />
                                            and cv to <a href="mailto:info@bace–cc.uk" >info@bace–cc.uk</a></p>
                                    </div>
                                    <div class="col-l-12">
                                        <div class="border"></div>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                        @endif
                    </div>

                </div>
            </div>


        </div>
    </div>

@endsection