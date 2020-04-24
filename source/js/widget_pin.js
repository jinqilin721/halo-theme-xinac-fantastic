if (window.Swiper) {
    var swiper = new Swiper('.blog-slider', {
        autoplay: {
            delay: 3000,
            stopOnLastSlide: false,
            disableOnInteraction: true,
        },
        spaceBetween: 30,
        effect: 'fade',
        mousewheel: {
            invert: false,
        },
        // autoHeight: true,
        pagination: {
            el: '.blog-slider__pagination',
            clickable: true,
        }
    });
}