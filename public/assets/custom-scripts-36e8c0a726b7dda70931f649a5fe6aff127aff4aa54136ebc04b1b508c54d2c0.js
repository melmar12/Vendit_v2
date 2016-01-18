/*
TODO:

- reorganize code order
*/



$(window).load(function() {
    // Image Carousel - plugin 
    $('.flexslider').flexslider( {
        animation: "slide",
    });
});


// Google Maps  
function initMap() {
        
    var myLatLng = {lat: 29.612740, lng: -95.545074};
    
    var map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 29.613616, lng: -95.556722},
        zoom: 15,
        zoomControl: true,
        mapTypeControl: false,
        zoomControlOptions: {
            position: google.maps.ControlPosition.TOP_CENTER
        },
        streetViewControl: true,
        streetViewControlOptions: {
            position: google.maps.ControlPosition.TOP_CENTER
        }
    });

    var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'Hello World!'
    });       
};



$(document).ready(function() {
    // Resources Links
    $(".resources-links a").click(function() {
             $('#pdf_content').attr("data", "assets/" + $(this).attr('class') + ".pdf?#zoom=50&scrollbar=0&toolbar=0&navpanes=0");
             $('#pdf_open').attr("href", "/assets/" + $(this).attr('class') +".pdf");
             console.log('function ran... clicked: ' + $(this).attr('class'));

    });
    
    
    // mobile Navigation 
    $(".mobile-nav-button").click(function() {
        $(".navv").toggleClass("is-visible");
    });


  // Image Carousel - plugin
    $('.image-carousel').slick({
        slidesToShow: 1,
        autoplay: true,
        infinite: true,
        autoplaySpeed: 6000,
        arrows: true,
        dots: false,

    });
     // Text Carousel - plugin
    $('.text-carousel').slick({
        slidesToShow: 1,
        autoplay: true,
        autoplaySpeed: 6000,
        arrows: true,
        dots: true,
    
    }); 
    
    
});


// Sticky Navigation 
var nav                 = document.querySelector('.navv'),
    nav_height          = getComputedStyle(nav).height.split('px')[0],
    nav_links           = document.querySelector('.nav-links'),
    //nav_links_height    = getComputedStyle(nav_links).height.split('px')[0],
    sticky_class        = 'is-fixed';
    //unfixed             = 'unfixed'


function stickyScroll(e) {

  if( window.pageYOffset > (nav_height) ) {
    nav_links.classList.add(sticky_class);
  }

  if( window.pageYOffset < (nav_height) ) {
    nav_links.classList.remove(sticky_class);

  }
}



window.addEventListener('scroll', stickyScroll, false);

console.log("custom-scripts loaded.");
function test() {
    console.log("this function ran");
}
    



