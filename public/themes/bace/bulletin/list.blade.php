@php

$news = $list->splice(1);
$featured = $list->first();
$date = \Carbon\Carbon::parse($featured->publish_on);


@endphp

@extends($site->theme.'::layouts.layout')

@section('content')
    <div class="bulletin">

        <header>
            <div class="cell-holder">
                <div class="cell">
                    <h1 class="alt">{!! $body->title !!}</h1>
                </div>
            </div>
        </header>




        @if(!empty($list))


            <div class="container">
                <a class="col-l-12 news-block" href="{{ $featured->url_slug }}">
                    <div class="inner">
                        <div class="preview">
                            @if(!empty($featured->media))
                                <img src="{{ $featured->media->external }}" >
                            @else
                                <img src="https://via.placeholder.com/1920x800" >
                            @endif
                        </div>
                        <h4 class="ntitle">{{ $featured->title }}</h4>
                        <p class="tiny date">Posted {{ $date->format('F, Y') }}</p>
                        <p class="tiny more">Read more</p>
                    </div>
                </a>
            </div>


            <div class="container">
                @foreach($news as $segment)
                    @var('date', \Carbon\Carbon::parse($segment->publish_on))
                    <a class="col-m-6 col-l-4 news-block" href="{{ $segment->url_slug }}">
                        <div class="inner">
                            <div class="preview">
                                @if(!empty($segment->media))
                                    <img src="{{ $segment->media->external }}/600x400" >
                                @else
                                    <img src="https://via.placeholder.com/600x400" >
                                @endif
                            </div>
                            <h4 class="ntitle">{{ $segment->title }}</h4>
                            <p class="tiny date">Posted {{ $date->format('F, Y') }}</p>
                            <p class="tiny more">Read more</p>
                        </div>
                    </a>
                @endforeach
            </div>



            {{--
            <div class="container">
                <div class="row">
                    <div class="col-l-11 center-col">
                    @foreach($list as $segment)

                        @var('subtitle', Node::findValue($segment, 'subtitle'))

                        @var('gallery', $segment->blocks->where('name', 'gallery')->first())
                        @var('date', \Carbon\Carbon::parse($segment->publish_on))

                        <article class="srblock">
                            <div class="row">
                                <div class="col-m-6">
                                    @if(!empty($subtitle))
                                    <h4>{{ $subtitle }}</h4>
                                    @endif
                                    <h4 class="title">{{ $segment->title }}</h4>
                                    {!! $segment->body !!}
                                </div>
                                <div class="col-m-5 push-m-1 image">
                                    {!! $gallery->compile() !!}
                                </div>
                            </div>
                            <p class="tiny date">Posted {{ $date->format('F, Y') }}</p>

                        </article>
                    @endforeach
                    </div>
                </div>
            </div>
            --}}
        @endif
    </div>

@endsection