<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="UTF-8">
        <title>{{ env("APP_TITLE") }}</title>
		<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC' crossorigin='anonymous'>
		<link rel='stylesheet'  href='{{ asset("css/app.min.css") }}'>
		<link rel='icon' href='{{ asset("img/logo.png") }}'>
		<link rel='apple-touch-icon' href='{{ asset("img/logo.png") }}'>
		<meta name="viewport" content="width=device-width, initial-scale=0.75, minimum-scale=0.75, shrink-to-fit=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="author" content="{{ env("APP_AUTHOR") }}">
		<meta name="description" content="{{ env('APP_DESCRIPTION') }}">
		<meta name="keywords" content="{{ env('APP_KEYWORDS') }}">

    </head>
    <body>
		@include("main.menu")
	
		@yield('content')

		@include("main.cart")
		
		<script>
			function toTop() {
				document.body.scrollTop = 0; // For Safari
				document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
			}
		</script>

		@include("main.footer")
	</body>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css'>
	<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js' integrity='sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM' crossorigin='anonymous'></script>
	<script src='{{ asset("js/app.js") }}'></script>
	{{-- <script src='{{ asset("js/offCache.js") }}'></script> --}}
</html>
