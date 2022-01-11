$(document).ready(function() {
	$("link").each(function() {		
		originalLink = $(this).attr("href");
		newLink = originalLink + "?offCache=" + Math.floor(Math.random() * 1000);
		$(this).attr("href", newLink)
	});

	$("script").each(function() {		
		originalLink = $(this).attr("src");
		newLink = originalLink + "?offCache=" + Math.floor(Math.random() * 1000);
		$(this).attr("src", newLink)
	});

//	$('<!-----------------------------\n|----------OFF CACHE----------|\n|------------FOR--------------|\n|-------CSS AND SCRIPT--------|\n|--------Marius Chivu---------|\n|----------------------------->').prependTo('html');
});
