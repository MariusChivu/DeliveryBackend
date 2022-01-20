@extends('index')
@section('content')
	<div class='container pagina-cont mt-5 mb-5'>
		<div class='row d-flex justify-content-center'>
			<div class='cld-md-12 m-4'><h1>Informații utilizator</h1></div>
			@if ($isLogin == false)
				<div class='alert alert-danger'>Trebuie să te conectezi la cont! </div>
			@else				
				<table class="table table-striped">
					<tr><td>Nume<td></td><td>{{ $user->name }}</td></tr>
					<tr><td>Email<td></td><td>{{ $user->mail }}</td></tr>
					<tr><td>Telefon<td></td><td>{{ $user->phone }}</td></tr>
					<tr><td>Data înregistrare<td></td><td>{{ $user->register }}</td></tr>
				</table>
			@endif	
		</div>
	</div>
@endsection