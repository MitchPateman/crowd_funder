$(function() {
    var slideshow = $('#slideshow'),
    slides = [],
    active = null;

    // build the slides array from the children of the slideshow, pull in any children.
    slideshow.children().each(function(i) {
        var thisSlide = $(this);

        // if its the active slide then set it to this index
        if ( thisSlide.hasClass('active') ) active = i;

        slides.push( thisSlide );
    });

    // if no active slide, take the last one
    if ( active === null ) active = slides.length - 1;

    function slideSwitch() {
        // add the last-active class to the previously active slide
        var lastActive = slides[active];
        lastActive.addClass('last-active');

        // find the next slide
        active++;

        // set to zero if it's too high
        if ( active >= slides.length ) active = 0;

        var nextActive = slides[active];

        nextActive.css({opacity: 0.0})
            .addClass('active')
            .animate({opacity: 1.0}, 1000, function() {
                lastActive.removeClass('active last-active');
            });
    }

    // start the interval
    setInterval( slideSwitch, 2500 );
});
