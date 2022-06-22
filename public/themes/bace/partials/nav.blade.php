@var('areas', Node::areas($site))

<nav role="navigation" id="navigation" class="fullscreen-nav">
    <div class="cell-holder">
        <div class="cell">
            @if(!$areas->isEmpty())
            <ul>
                @foreach($areas as $area)
                    <li><a href="{{ $area->url_slug }}" title="Go to {{ $area->title }}">{{ $area->title }}</a></li>
                @endforeach
            </ul>
            @endif
        </div>
    </div>
</nav>