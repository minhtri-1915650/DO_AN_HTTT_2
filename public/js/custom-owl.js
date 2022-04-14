$('.owl-carousel-slider').owlCarousel({
    loop: true,
    margin: 10,
    autoPlay: true,
    nav: true,
    navigation: true,
    autoplayTimeout: 500,
    items: 1,
    dots: true
})
$('.owl-carousel-product').owlCarousel({
    loop: true,
    margin: 20,
    autoPlay: true,
    nav: true,
    navigation: true,
    autoplayTimeout: 2500,
    responsive: {
        0: {
            items: 2
        },
        600: {
            items: 3
        },
        1000: {
            items: 5
        }
    }
})