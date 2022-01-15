@extends('index')
@section('content')
	<div class='container mt-5 mb-5'>
		<div class='row justify-content-center align-items-center'>
			<div class='col-md-12'><h1>Contact</h1></div>
			<div class='col-md-4'>
				<h3><i class="fas fa-map-marker-alt"></i> Adresa</h3>
				<h4>{{ $contact["address"] }}</h4>
			</div>
			<div class='col-md-8'>
				<iframe src="https://www.google.com/maps?q={{ $contact['address'] }}&output=embed" width="800" height="600" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
			</div>
			<div class='col-md-6 mt-5 mb-5'>
				<h3><i class="fas fa-phone-alt"></i> Telefon</h3>
				<h4>{{ $contact['phone'] }}</h4>
			</div>
			<div class='col-md-6 mt-5 mb-5'>
				<h3><i class="fas fa-envelope"></i> E-mail</h3>
				<h4>{{ $contact['mail'] }}</h4>
			</div>
		</div>
	</div>
@endsection