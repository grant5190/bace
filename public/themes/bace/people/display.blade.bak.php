@var('pageTag', Node::findValue($node, 'page-tag'))
@var('theme', Node::findValue($node, 'theme'))
@var('banner', ((!empty($node->media))?  $node->media->external : 'http://placehold.it/2000x1200' ))
@var('segments', $node->children->sortBy('order'))
@var('alternate', false)

@var('sizes', ['300x150', '200x150'])




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

                {{--
                <div class="container">
                    <div class="subtitle-holder">
                        @if(!empty($pageTag))
                            <h6 class="subtitle wide">{{ $pageTag }}</h6>
                        @endif
                    </div>
                </div>
                --}}
                <a href="#start" class="down-arrow-header arrowScroll no-ajaxy" title="go to"></a>
            </div>
        </div>


        <div class="grid-wrapper" id="start">

            <div class="container">

                <div class="inner-page" id="inner-page">

                    <div class="fixed-filters">
                        <h4 class="title">People</h4>
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


                        @foreach($segments as $segment)
                            @var('scolone', $segment->blocks->where('name', 'colone')->first())
                            @var('alternate', ((!$alternate)? true : false))
                            @var('position', Node::findValue($segment, 'position'))
                            @var('image', ((!$alternate)? $segment->media->external.'/500x400' : $segment->media->external.'/325x400'))


                            <div class="page-segment srblock" id="{{ $segment->tag }}">


                                @if(!empty($segment->media))
                                    <div class="profile srblock">
                                    <div class="headshot @if(!$alternate) rev @endif">
                                        <img src="{{ $image }}"  />
                                    </div>
                                    <div class="name @if(!$alternate) rev @endif">
                                        <h4>{{ $segment->title }}</h4>
                                        <h4>{{ $position }}</h4>
                                    </div>
                                    </div>
                                @endif

                                {{--
                                @if(!empty($segment->media))
                                    <div class="profile">
                                        <div class="headshot @if(!$alternate) rev @endif">
                                            <div class="inner" style="background-image: url({{ $image }})"></div>
                                        </div>
                                        <div class="name @if(!$alternate) rev @endif">
                                            <h4>{{ $segment->title }}</h4>
                                            <h4>{{ $position }}</h4>
                                        </div>
                                    </div>
                                @endif
                                --}}

                                <div class="row srblock">
                                    <div class="col-l-6 textual">
                                        {!! $segment->body !!}
                                    </div>
                                    <div class="col-l-6 textual">
                                        {!! $scolone->content !!}
                                    </div>
                                </div>
                            </div>
                        @endforeach
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

@endsection