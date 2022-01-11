<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <title>Food Delivery Laravel</title>
		<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css' rel='stylesheet' integrity='sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC' crossorigin='anonymous'>
		<link rel='stylesheet' href='{{ asset("css/app.min.css") }}'><link rel='icon' href='{{ asset("img/logo.png") }}'>
		<link rel='apple-touch-icon' href='{{ asset("img/logo.png") }}'>
		<meta name="viewport" content="width=device-width, initial-scale=0.75, minimum-scale=0.75, shrink-to-fit=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="author" content="Marius Chivu">
		<meta name="description" content="{{ config('app.description') }}">
		<meta name="keywords" content="{{ config('app.keywords') }}">

    </head>
    <body>
		@include("main.menu")
	
		@yield('content')

		@include("main.footer")


	</body>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css'>
	<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js' integrity='sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM' crossorigin='anonymous'></script>
	<script src='{{ asset("js/offCache.js") }}'></script>
</html>