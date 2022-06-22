@var('segments', $node->children)

@extends($site->theme.'::layouts.layout')

@section('content')
    <div class="bulletin">

        <header>
            <div class="cell-holder">
                <div class="cell">
                    <h1 class="alt">News</h1>
                </div>
            </div>
        </header>

            <div class="container">
                <div class="row">
                    <div class="col-l-11 center-col">

                            @var('subtitle', Node::findValue($node, 'subtitle'))

                            @var('gallery', $node->blocks->where('name', 'gallery')->first())
                            @var('date', \Carbon\Carbon::parse($node->publish_on))

                            <article class="srblock">
                                <div class="row">
                                    <div class="col-m-6">
                                        @if(!empty($subtitle))
                                            <h4>{{ $subtitle }}</h4>
                                        @endif
                                        <h4 class="title">{{ $node->title }}</h4>
                                        {!! $node->body !!}
                                    </div>
                                    <div class="col-m-5 push-m-1 image">
                                        {!! $gallery->compile() !!}
                                    </div>
                                </div>
                                <p class="tiny date">Posted {{ $date->format('F, Y') }}</p>

                            </article>
                    </div>
                </div>
            </div>
    </div>

@endsection