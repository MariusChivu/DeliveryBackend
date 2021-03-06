@extends('index')
@section('content')
	<div class='container pagina-cont mt-5 mb-5'>
		<div class='row d-flex justify-content-center'>
			<div class='cld-md-12 m-4'><h1>Panou utilizator</h1></div>
			@if ($isLogin == false)
				<div class='alert alert-danger'>Trebuie să te conectezi la cont! </div>
			@else				
				<a href="/user/info" class='col-md-4 border  border-dark m-3 p-3 pointer'>
					<h2><i class="fas fa-user-edit"></i> Informații cont</h2>
					<p>Gestionează Informațiile despre cont.</p>
				</a>
				<a href="/user/orders" class='col-md-4 border  border-dark m-3 p-3 pointer'>
					<h2><i class="fas fa-receipt"></i> Comenzile mele</h2>
					<p>Istoricul comenzilor.</p>
				</a>
				<a href="/user/payment" class='col-md-4 border  border-dark m-3 p-3 pointer'>
					<h2><i class="fas fa-credit-card"></i> Metode de plată</h2>
					<p>Modifică metodele tale de plată.</p>
				</a>
				<a href="/logout" class='col-md-4 border  border-dark m-3 p-3 pointer'>
					<h2><i class="fas fa-sign-out-alt"></i> Deconectare</h2>
					<p>Deconectare de la cont.</p>
				</a>
			@endif
				
		</div>
	</div>
@endsection