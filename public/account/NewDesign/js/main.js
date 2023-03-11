(function ($) {
	"use strict";
    $(document).ready(function(){
		/*====================================
			Sticky Header JS
		======================================*/ 
		jQuery(window).on('scroll', function() {
			if ($(this).scrollTop() > 100) {
				$('.header').addClass("sticky");
			} else {
				$('.header').removeClass("sticky");
			}
		});
		
		
		/*==============================
			Mobile Menu JS
		================================*/ 	
		$('.menu').slicknav({
			prependTo:".mobile-menu",
		});
		/*====================================
			Search Form JS
		======================================*/ 	
		$('.search-form .icon').on( "click", function(){
			$('.search-form').toggleClass('active');
		});	
		$('.mobile-arrow').on( "click", function(){
			$('.mobile-menu').toggleClass('active');
		});	
		
		/*====================================
			Wow JS
		======================================*/		
		var window_width = $(window).width();   
			if(window_width > 767){
            new WOW().init();
		}
		
		/*====================================
			Main Slider JS
		======================================*/ 	
		$(".slider-area").owlCarousel({
			loop:true,
			autoplay:false,
			smartSpeed: 700,
			autoplayTimeout:3500,
			singleItem: true,
			autoplayHoverPause:true,
			margin:30,
			animateOut: 'fadeOut',
			animateIn: 'fadeIn',
			items:1,
			dots:true,
			nav:true,
			navText: ['<i class="fa fa-angle-up" aria-hidden="true"></i>', '<i class="fa fa-angle-down" aria-hidden="true"></i>'],
			responsive:{
				320: {
					dots:false,
					nav:false,
				},
				768: {
					dots:true,
					nav:true,
				},
				1170: {
					dots:true,
					nav:true,
				},
			}
		});	
	
		
		
		/*====================================
			Testimonial Slider JS
		======================================*/	
		$('.testimonial-nav').slick({
			 slidesToShow: 5,
			 slidesToScroll: 1,
			 asNavFor: '.testimonial-content',
			 autoplay:true,
			 focusOnSelect: true,
			 arrows:true,
			 centerMode:true,
			 speed: 700,
			 autoplaySpeed: 3500,
			 centerPadding: '0px',
			 prevArrow: '<button class="Prev"><i class="fa fa-long-arrow-left" aria-hidden="true"></i></button>',
			nextArrow: '<button class="Next"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>',
			responsive: [{
					breakpoint: 800,
					settings: {
						arrows:true,
						slidesToShow: 4,
					}
				},
				{
					breakpoint: 600,
					settings: {
						arrows:false,
						slidesToShow: 3,
					}
				},
				{
					breakpoint: 350,
					settings: {
						arrows:false,
						slidesToShow: 3,
					}
				},
			]
		});
		$('.testimonial-content').slick({
			 slidesToShow: 1,
			 slidesToScroll: 1,
			 autoplay:true,
			 fade: true,
			 arrows:false,
			 centerMode:true,
			 speed: 700,
			 autoplaySpeed: 3500,
			 centerPadding: '0px',
			 asNavFor: '.testimonial-nav'
		});
	
	
		
		/*======================================
			Scroll JS
		======================================*/ 
		$('.header.onepage .slicknav_nav li a').on('click', function(event) {
			var $anchor = $(this);
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top -0 
			}, 1000, 'easeInOutQuart');
			event.preventDefault();
		});
		
    });	
	
		
		/*====================================
			Preloader JS
		======================================*/
		$(window).load(function(){
				$('.preloader').fadeOut('slow', function(){
				$(this).remove();
			});
		});
})(jQuery);	






//Back to top
$(document).ready(function(){ 
    $(window).scroll(function(){ 
        if ($(this).scrollTop() > 100) { 
            $('#myBtn').fadeIn(); 
        } else { 
            $('#myBtn').fadeOut(); 
        } 
    }); 
    $('#myBtn').click(function(){ 
        $("html, body").animate({ scrollTop: 0 }, 600); 
        return false; 
    }); 
});


// Counter
$(document).ready(function() {

	var counters = $(".count");
	var countersQuantity = counters.length;
	var counter = [];
  
	for (i = 0; i < countersQuantity; i++) {
	  counter[i] = parseInt(counters[i].innerHTML);
	}
  
	var count = function(start, value, id) {
	  var localStart = start;
	  setInterval(function() {
		if (localStart < value) {
		  localStart++;
		  counters[id].innerHTML = localStart;
		}
	  }, 80);
	}
  
	for (j = 0; j < countersQuantity; j++) {
	  count(0, counter[j], j);
	}
  });

//   Links Animation

$("a.animation-scroll").click(function (event) {
	event.preventDefault();
	$("html, body").animate({ scrollTop: $($(this).attr("href")).offset().top }, 1000);
});

// END  Links Animation




// Start Navigation
$(document).ready(function () {
	var $navi = $("#header"), scrollTop = 0;
	$(window).scroll(function () {
		var y = $(this).scrollTop(), speed = 0.05, pos = y * speed, maxPos = 100;
		if (y > scrollTop) {
			pos = maxPos;
		} else {
			pos = 0;
		}
		scrollTop = y;
		$navi.css({
			"-webkit-transform": "translateY(-" + pos + "%)",
			"-moz-transform": "translateY(-" + pos + "%)",
			"-o-transform": "translateY(-" + pos + "%)",
			"transform": "translateY(-" + pos + "%)"
		});
	});
});

// End Navigation

