var jquery = require('jquery'),
    History = require('./libs/jquery.history.js'),
    imagesLoaded = require('imagesLoaded'),
    slick = require('slick-carousel'),
    velocity = require('velocity-animate'),
    ScrollReveal = require('ScrollReveal'),
    Waypoint = require('./libs/jquery.waypoints');

var History = window.History,
    document = window.document,
    body = $(document.body),
    banner = $('#banner'),
    $window = $(window),
    mainName = '#main',
    main = $(mainName),
    loader = $('#loader'),
    slideshow = null,
    slideshow = null,
    scrollOptions = {
        duration: 800,
        easing: 'swing',
    },
    moveSr = {
        origin: "bottom",
        distance: "200px",
        duration: 600,
        scale: 1,
        reset: false
    };

// HTML Helper
var documentHtml = function (html) {
    // Prepare
    var result = String(html)
        .replace(/<\!DOCTYPE[^>]*>/i, '')
        .replace(/<(html|head|body|title|meta|script)([\s\>])/gi, '<div class="document-$1"$2')
        .replace(/<\/(html|head|body|title|meta|script)\>/gi, '</div>');

    // Return
    return $.trim(result);
};


// Wait for Document
$(function () {

    'use strict';

    // Prepare Variables
    var
        /* Application Specific Variables */
        $menu = $('#nav').filter(':first'),
        activeClass = 'active',
        activeSelector = '.active',
        menuChildrenSelector = '> li,> ul > li',
        completedEventName = 'statechangecomplete',
        triggerEventName = 'statechangetrigger',
        /* Application Generic Variables */
        rootUrl = History.getRootUrl();


    if ($('html').hasClass('no-history') || (screen.width < 768)) {
        return false;
    }

    // Ensure Content
    if (main.length === 0) {
        main = body;
    }

    // Internal Helper
    $.expr[':'].internal = function (obj, index, meta, stack) {
        // Prepare
        var
            $this = $(obj),
            url = $this.attr('href') || '',
            isInternalLink;

        // Check link
        isInternalLink = url.substring(0, rootUrl.length) === rootUrl || url.indexOf(':') === -1;

        // Ignore or Keep
        return isInternalLink;
    };


    // Ajaxify Helper
    $.fn.ajaxify = function () {
        // Prepare
        var $this = $(this);

        // Ajaxify
        $this.find('a:internal:not(.no-ajaxy)').not('.ajax-ignore a').click(function (event) {
            // Prepare
            var
                $this = $(this),
                url = $this.attr('href'),
                title = $this.attr('title') || null;

            $window.trigger(triggerEventName);


            // Continue as normal for cmd clicks etc
            if (event.which == 2 || event.metaKey) {
                return true;
            }

            // Ajaxify this link
            History.pushState(null, title, url);
            event.preventDefault();
            return false;
        });

        // Chain
        return $this;
    };

    // Ajaxify our Internal Links
    body.ajaxify();

    // Hook into State Changes
    $window.bind('statechange', function () {
        // Prepare Variables
        var
            State = History.getState(),
            url = State.url,
            relativeUrl = url.replace(rootUrl, '');

        // Set Loading
        // we do all our fading in and out with css
        body.addClass('loading');

        // Start Fade Out
        // Animating to opacity to 0 still keeps the element's height intact
        // Which prevents that annoying pop bang issue when loading in new content
        main.velocity({opacity: 0}, 600, function () {

            // Ajax Request the Traditional Page
            $.ajax({
                url: url,
                success: function (data, textStatus, jqXHR) {
                    // Prepare
                    var
                        $data = $(documentHtml(data)),
                        $dataBody = $data.find('.document-body:first'),
                        $dataContent = $dataBody.find(mainName).filter(':first'),
                        $menuChildren, contentHtml, $scripts;

                    // Fetch the scripts
                    $scripts = $dataContent.find('.document-script');
                    if ($scripts.length) {
                        $scripts.detach();
                    }

                    // Fetch the content
                    contentHtml = $dataContent.html() || $data.html();
                    if (!contentHtml) {
                        document.location.href = url;
                        return false;
                    }

                    // Update the menu
                    $menuChildren = $menu.find(menuChildrenSelector);
                    $menuChildren.filter(activeSelector).removeClass(activeClass);
                    $menuChildren = $menuChildren.has('a[href^="' + relativeUrl + '"],a[href^="/' + relativeUrl + '"],a[href^="' + url + '"]');
                    if ($menuChildren.length === 1) {
                        $menuChildren.addClass(activeClass);
                    }

                    // Update the content
                    main.stop(true, true);
                    main.html(contentHtml).ajaxify();


                    // Update the title
                    document.title = $data.find('.document-title:first').text();
                    try {
                        document.getElementsByTagName('title')[0].innerHTML = document.title.replace('<', '&lt;').replace('>', '&gt;').replace(' & ', ' &amp; ');
                    }
                    catch (Exception) {
                    }

                    // Add the scripts
                    $scripts.each(function () {
                        var $script = $(this), scriptText = $script.text(),
                            scriptNode = document.createElement('script');
                        if ($script.attr('src')) {
                            if (!$script[0].async) {
                                scriptNode.async = false;
                            }
                            scriptNode.src = $script.attr('src');
                        }
                        scriptNode.appendChild(document.createTextNode(scriptText));
                        main.appendChild(scriptNode);
                    });

                    // Complete the change


                    $('#main').velocity("scroll", scrollOptions);


                    /* http://balupton.com/projects/jquery-scrollto */
                    body.removeClass('loading');
                    $window.trigger(completedEventName);

                    // Inform Google Analytics of the change
                    if (typeof window._gaq !== 'undefined') {
                        window._gaq.push(['_trackPageview', relativeUrl]);
                    }

                    // Inform ReInvigorate of a state change
                    if (typeof window.reinvigorate !== 'undefined' && typeof window.reinvigorate.ajax_track !== 'undefined') {
                        reinvigorate.ajax_track(url);
                        // ^ we use the full url here as that is what reinvigorate supports
                    }
                },
                error: function (jqXHR, textStatus, errorThrown) {
                    document.location.href = url;
                    return false;
                }
            }); // end ajax

        });


    }); // end onStateChange
});

$(function ($) {

    'use strict';

    function siteLoaded(callback) {
        // images have loaded
        body.imagesLoaded({background: true}, function () {
            if (!body.hasClass('loaded')) {



                loader.velocity("fadeOut", {
                    duration: 500, complete: function () {
                        body.addClass('loaded');
                        callback();
                    }
                });
            } else {
                callback();
            }
        });
    }



    function makeSlick() {
        slideshow = $('.slideshow');
        if (slideshow.length > 0) {
            slideshow.slick({
                autoplaySpeed: 1000,
                rows: 0
            });
        }
    }


    function updateNavigation() {
        var newScrollTop = $(window).scrollTop();
        if (newScrollTop <= 200) {
            var opacity = 0.75 * (newScrollTop / 2 / 100);
            banner.css('background-color', 'rgba(0, 0, 0, ' + opacity + ')');
            banner.removeClass('banded');
        } else if (banner.css('background-color') !== 'rgba(0, 0, 0, 0.75)') {
            banner.css('background-color', 'rgba(0, 0, 0, 0.75)');
            banner.addClass('banded');
        }

        $(window).scroll(function () {
            $(".fadeout").css("opacity", 1 - $(window).scrollTop() / 250);
        });

    }

    function onScroll() {
        updateNavigation();
    };

    $(window).scroll(function () {
        onScroll();
    });
    onScroll();

    /*
    function navigation() {
        $('#toggle-nav').on('click', function (e) {
            e.preventDefault();
            $(this).toggleClass('is-active');
            if ($('#navigation').hasClass('open')) {
                $('#navigation').velocity('fadeOut', {
                    duration: 500,
                    complete: function () {
                        $('#navigation').removeClass('open');
                        $('#toggle-nav').removeClass('is-active');
                    }
                });
            } else {
                $('#navigation').velocity('fadeIn', {
                    duration: 500,
                    complete: function () {
                        $('#navigation').addClass('open');
                        $('#toggle-nav').addClass('is-active');
                    }
                });
            }
        });
    }
    */

    function arrowScroll() {
        $('.arrowScroll').on('click', function (e) {
            e.preventDefault();
            var that = $(this),
                target = that.attr('href');
            $(target).velocity("scroll", { duration: 750, offset: -72 });
        });
    }



    function scrollToMe() {

        var positions = [];
        $('.scrollTo').each(function (index) {
            positions[$(this).attr('href')] = $($(this).attr('href')).offset().top
        });

        $('.scrollTo').on('click', function (e) {
            e.preventDefault();

            var that = $(this),
                target = that.attr('href'),
                scrollT = $(target).offset().top;

            $('.scrollTo').removeClass('active');
            that.addClass('active');


            if (scrollT != positions[target]) {
                scrollT = scrollT + 200; // Scroll reveal movement offset
            }

            $('html, body').animate({
                scrollTop: (scrollT - 400) // Banner height add on
            }, 1000);

            return false;
        });


    }


    function reveal() {
        window.sr = ScrollReveal();
        sr.reveal('.srblock', moveSr);
    }


    function closeNavigation() {
        $('#toggle-nav').removeClass('is-active');
        $('#mobile-menu').removeClass('open');
        /*
        $('#navigation').velocity('fadeOut', {
            duration: 500,
            complete: function () {
                $('#navigation').removeClass('open');
                $('#toggle-nav').removeClass('is-active');
            }
        });
        */
    }

    function mobileMenu() {
        $('#toggle-nav').on('click', function (e) {
            $(this).toggleClass('is-active');
            $('#mobile-menu').toggleClass('open');
        });
    }


    function waypointsMarker() {
        var waypoints = $('.page-segment').waypoint({
            handler: function (direction) {
                var target = '#nav-'+this.element.id;
                $('.scrollTo').removeClass('active');
                $(target).addClass('active');
            },
            offset: '400px'
        });
    }


    function mapMake() {

        map = $('#map');

        if (map.length > 0) {

            var lat = map.data('lat'),
                lng = map.data('lng'),
                title = map.data('title');

            mapboxgl.accessToken = 'pk.eyJ1Ijoidmlja3luYXlsb3IiLCJhIjoiY2p0ZWtsaTNmMWI0bzN6dGY3d212Mjc3ZiJ9.n1vk2EjsH1tEb1evE4ZQZQ';
            var map = new mapboxgl.Map({
                container: 'map', // container id
                style: 'mapbox://styles/mapbox/light-v9', // stylesheet location
                center: [lng, lat], // starting position [lng, lat]
                zoom: 15 // starting zoom
            });

            // map.scrollZoom.disable();

            // map.addControl(new mapboxgl.NavigationControl());

            var geojson = {
                type: 'FeatureCollection',
                features: [{
                    type: 'Feature',
                    geometry: {
                        type: 'Point',
                        coordinates: [lng, lat]
                    },
                    properties: {
                        title: 'BACE',
                    }
                }]
            };

            geojson.features.forEach(function (marker) {

                var el = document.createElement('div');
                el.className = 'marker';
                new mapboxgl.Marker(el)
                    .setLngLat(marker.geometry.coordinates)
                    .setPopup(new mapboxgl.Popup({offset: 25}) // add popups
                        .setHTML('<h4 class="identity small"><a href="/" >' + marker.properties.title + '</a></h4>' +
                            '<p class="small">Caroline Street<br>' +
                            'Birmingham B3 1TW</p>' +
                            '<img class="image" src="/themes/bace/assets/img/street-map.jpg" >'))
                    .addTo(map);
            });

        }

        return false;
    }

    function triangle() {
        var allPoints = $("#triangle > .point");
        if (allPoints.length > 0) {
            allPoints.on("click", function (e) {
                e.preventDefault();
                allPoints.removeClass("on");
                var that = $(this),
                    target = that.data('type'),
                    link = that.data('link');
                that.addClass("on");

                window.location.href = link;

                //$('#type-click').find('.replace').html('<a href="'+link+'" >' +target +'</a>');
            });
        }
    }


    $window.on('statechangecomplete', function () {
        siteLoaded(function () {
            closeNavigation();
            updateNavigation();
            makeSlick();
            reveal();
            scrollToMe();
            arrowScroll();
            waypointsMarker();
            mapMake();
            triangle();
            mobileMenu();
            main.velocity({opacity: 1}, 600, function () {
            });
        });
    });

    $window.on('statechangetrigger', function (e, eventInfo) {
    });


    siteLoaded(function () {
        //navigation();
        updateNavigation();
        makeSlick();
        reveal();
        scrollToMe();
        arrowScroll();
        waypointsMarker();
        mapMake();
        triangle();
        mobileMenu();
    });
});

window.onbeforeunload = function () {
    loader.velocity("fadeIn", {
        duration: 200, complete: function () {
            window.scrollTo(0, 0);
        }
    });
}