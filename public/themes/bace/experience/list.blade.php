@var('banner', ((!empty($node->media))?  $node->media->external : 'http://placehold.it/2000x1200' ))


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

        <div class="grid-wrapper experience" id="start">

            <header>
                <div class="cell-holder">
                    <div class="cell">
                        <div class="container">
                            <div class="col-l-8 center-col intro">
                                {!! $body->content !!}
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <div class="container-full">
                <div class="row experiences">
                    @if(!empty($list))
                        @foreach($list as $item)
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
    </div>

@endsection