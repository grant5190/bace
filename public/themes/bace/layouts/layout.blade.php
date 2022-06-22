@include($site->theme.'::partials.meta')
<body>

<div class="wrapper" id="scroll">
    @include($site->theme.'::partials.header')

    <main role="main" class="main" id="main">
        @section('wrapper')
            @yield('content')
        @show
        @include($site->theme.'::partials.footer')
    </main>
</div>

{{--
@include($site->theme.'::partials.nav')
--}}

<div class="site-loader" id="loader"></div>
<script src="https://api.tiles.mapbox.com/mapbox-gl-js/v0.53.1/mapbox-gl.js"></script>
<script src="/themes/{{$site->theme}}/assets/js/script.min.js?v1.3"></script>
</body>
</html>