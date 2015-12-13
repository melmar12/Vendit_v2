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

// Twitter Widget
!function(d,s,id){
    var js,fjs=d.getElementsByTagName(s)[0],
    p=/^http:/.test(d.location)?'http':'https';

    if(!d.getElementById(id)){
        js=d.createElement(s);
        js.id=id;
        js.src=p+"://platform.twitter.com/widgets.js";
        fjs.parentNode.insertBefore(js,fjs);
    }
}(document,"script","twitter-wjs");



$(document).ready(function() {
    // Resources Links
    $(".resources a").click(function() {
             $('#pdf_content').attr("data", "../assets/" + $(this).attr('class') + ".pdf?#zoom=50&scrollbar=0&toolbar=0&navpanes=0");
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


    




