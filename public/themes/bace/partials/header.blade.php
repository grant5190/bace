@var('areas', Node::areas($site))
@var('ignore', ['privacy-policy'])

<header role="banner" id="banner">

    <h2 class="identity alt small"><a href="/" >BACE</a></h2>
    {{--
    <div class="container">
        <h6 class="wide"><a href="/" title="go to homepage">BACE CONSTRUCTION CONSULTANTS</a></h6>
    </div>
    <button class="no-ajaxy hamburger hamburger--collapse toggle-button" id="toggle-nav" type="button">
        <span class="hamburger-box">
            <span class="hamburger-inner"></span>
        </span>
    </button>
    --}}

    <nav class="top-level-nav">
        @if(!$areas->isEmpty())
            <ul>
                @foreach($areas as $area)
                    @if(!in_array($area->tag, $ignore))
                    <li><a href="{{ $area->url_slug }}" title="Go to {{ $area->title }}">{{ $area->title }}</a></li>
                    @endif
                @endforeach
            </ul>
        @endif
    </nav>

    <nav class="icons">
        <ul>
            <li>
                <a href="https://www.linkedin.com/company/bace-construction-consultants-ltd/" target="_blank"><i class="fab fa-linkedin"></i></a>
            </li>
            <li>
                <a href="/contact"><i class="fal fa-envelope"></i></a>
            </li>
        </ul>
    </nav>

    <button class="no-ajaxy hamburger hamburger--collapse toggle-button" id="toggle-nav" type="button">
        <span class="hamburger-box">
            <span class="hamburger-inner"></span>
        </span>
    </button>

</header>

<div class="mobile-menu" id="mobile-menu">
    <div class="cell-holder">
        <div class="cell">
            <nav>
                @if(!$areas->isEmpty())
                    <ul>
                        @foreach($areas as $area)
                            <li><a href="{{ $area->url_slug }}" title="Go to {{ $area->title }}">{{ $area->title }}</a></li>
                        @endforeach
                    </ul>
                @endif
            </nav>
        </div>
    </div>
</div>

