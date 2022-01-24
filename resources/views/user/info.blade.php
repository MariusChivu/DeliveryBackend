@extends('index')
@section('content')
	<div class='container pagina-cont mt-5 mb-5'>
		<div class='row d-flex justify-content-center'>
			<div class='cld-md-12 m-4'><h1>Informații utilizator</h1></div>
			@if ($isLogin == false)
				<div class='alert alert-danger'>Trebuie să te conectezi la cont! </div>
			@else
				@if($errors->first() == "update_info_success")
					<div class='alert alert-success'>Informațiile contului au fost actualizate.</div>
				@endif
				@if($errors->first() == "update_info_error")
					<div class='alert alert-danger'>Informațiile contului nu au fost actualizate!</div>
				@endif
				<form action="{{ route("index") }}" method='POST'> {{ csrf_field() }}		
					<table class="table table-striped">
						<tr>
							<td>Nume</td>
							<td>
								<input type='text' name='name' class='form-control' value='{{ $user->name }}'>
							</td>
						</tr>
						<tr>
							<td>Email</td>
							<td>
								<input type='text' name='mail' class='form-control' value='{{ $user->mail }}'>
							</td>
						</tr>
						<tr>
							<td>Telefon</td>
							<td>
								<input type='text' name='phone' class='form-control' value='{{ $user->phone }}'>
							</td>
						</tr>
						<tr>
							<td>Data înregistrare</td>
							<td>{{ $user->register }}</td>
						</tr>
						@if ($user->updated_at != null)
							<tr>
								<td>Ultima actualizare</td>
								<td>{{ $user->updated_at }}</td>
							</tr>
						@endif
					</table>
					<button type='submit' name='updateInfo' class='btn btn-warning'>Actualizare Informații</button>
				</form>
			@endif	
		</div>
	</div>
@endsection