
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

function getLocation() {
	navigator.geolocation.watchPosition(function(position) {
		navigator.geolocation.watchPosition(getPosition);
		writePoistion(position);
		window.location.href = "near/distance";

	},
	function(error) {
		if(error.code == error.PERMISSION_DENIED) {
			$('#modalLocatie').modal('show'); 
		}
	});
}

function writePoistion(position) {
	var lat = position.coords.latitude;
	var long = position.coords.longitude;
	var inputLocatie = document.getElementById("inputLocatie");

	inputLocatie.value = `${lat}, ${long}`;
	document.cookie = `position=${inputLocatie.value}`;
}

function getPosition(position) {
	var lat = position.coords.latitude;
	var long = position.coords.longitude;
	var locatie = lat + ", " + long;
	return locatie;
}

function getCookie(cookieName) {
	let cookie = {};
	document.cookie.split(';').forEach(function(el) {
	  let [key,value] = el.split('=');
	  cookie[key.trim()] = value;
	});
	return cookie[cookieName];
  }