// set active class for restaurant menu when scroll
$(document).ready(function() {
	$("#active").addClass('active');
	$("body").scrollspy({target: ".nav", offset:0});
});

// make restaurant menu fixed
$(window).scroll(function() {    
	var scroll = ($(window).scrollTop() / $("#scroll-to-fix-menu").height() * 100);
	var meniu = $(".restaurant-meniu");
	var meniuH = $(".restaurant-meniu").height();
	var hidden = $(".hidden-div");
	hidden.attr('style', 'height: '+meniuH+'px');

	if (scroll >= 126) {
		meniu.addClass('fixed-top');
		meniu.attr('style', 'margin-top: 0px!important; box-shadow: 0px 10px 15px -10px #000000bf;');
		hidden.addClass('d-block');
		hidden.removeClass('d-none');
	} else {
		meniu.removeClass('fixed-top');
		meniu.removeAttr('style');
		hidden.removeClass('d-block');
		hidden.addClass('d-none');
	}
});