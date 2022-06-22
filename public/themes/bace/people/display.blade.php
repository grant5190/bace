@php
    $pageTag = Node::findValue($node, 'page-tag');
    $theme = Node::findValue($node, 'theme');
    $banner = ((!empty($node->media))?  $node->media->external : 'http://placehold.it/2000x1200' );
    $people = $node->children->sortBy('order');
    $team = $people->splice(2);

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
                        <h3 class="title">People</h3>
                        <div class="services">
                            <ul class="sub-nav">
                                <li><a href="#directors" class="scrollTo no-ajaxy" id="nav-directors">Directors</a></li>
                                @foreach($people as $segment)
                                    <li><span>{{ $segment->title }}</span></li>
                                @endforeach
                            </ul>
                            <ul class="sub-nav">
                                <li><a href="#team" class="scrollTo no-ajaxy" id="nav-team">Associate Directors</a></li>
                                @foreach($team as $segment)
                                    <li><span>{{ $segment->title }}</span></li>
                                @endforeach
                            </ul>
                            <p>Supported by a wider team of PM's, Employers Agents & Cost Managers.</p>
                        </div>
                    </div>

                    <div class="grid-content">

                        <div class="page-segment srblock intro">
                            <div class="col-l-12">
                                {!! $body->content !!}
                            </div>
                        </div>

                        <div class="col-sm-12">
                            <div class="bordered"></div>
                            <h4 id="directors" class="page-segment people-divider">Directors</h4>
                        </div>

                        @foreach($people as $segment)

                            @php
                                $scolone = $segment->blocks->where('name', 'colone')->first();
                                $position = Node::findValue($segment, 'position');
                                $image = $segment->media->external;
                            @endphp

                            <div class="col-l-6">
                                <div class="srblock">

                                    <div class="profile">
                                        @if(!empty($segment->media))
                                            <div class="headshot">
                                                <img src="{{ $image }}"/>
                                            </div>
                                        @endif
                                        <div class="profile-copy">
                                            <h4>{{ $segment->title }}</h4>
                                            <h5 class="position">{{ $position }}</h5>
                                            {!! $segment->body !!}
                                            {!! $scolone->content !!}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                        <div class="col-l-12">
                            <div class="bordered"></div>
                            <h4 id="team" class="page-segment people-divider">Associate Directors</h4>
                        </div>
                        @foreach($team as $segment)

                            @php
                                $scolone = $segment->blocks->where('name', 'colone')->first();
                                $position = Node::findValue($segment, 'position');
                                $image = $segment->media->external;
                            @endphp

                            <div class="col-l-6">
                                <div class="srblock">

                                    <div class="profile team">
                                        @if(!empty($segment->media))

                                            <div class="headshot">
                                                <img src="{{ $image }}"/>
                                            </div>

                                        @endif

                                        <div class="profile-copy">
                                            <h4>{{ $segment->title }}</h4>
                                            <h5 class="position">{{ $position }}</h5>
                                            {!! $segment->body !!}
                                        </div>

                                    </div>
                                </div>
                            </div>
                        @endforeach


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