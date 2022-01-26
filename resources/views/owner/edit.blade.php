@extends('index')
@section('content')
	<div class='container pagina-cont mt-5 mb-5'>
		<div class='row d-flex justify-content-center'>
			@if ($isOwner == false)
			<div class='alert alert-danger'><i class="fas fa-exclamation-triangle"></i> Nu ai acces în această zonă!</div>
			@else
			<div class='cld-md-12 m-4'><h1>Actualizare restaurant</h1></div>
				@if($errors->first() == "update_restaurant_success")
					<div class='alert alert-success'>Informațiile au fost actualizate.</div>
				@endif
				<form action="{{ route("index") }}" method="POST" enctype="multipart/form-data"> {{ csrf_field() }}	
					<table class="table table-striped">
						<tr>
							<td>Nume</td>
							<td>
								<input type='text' name='name' class='form-control' value='{{ $restaurant->name }}'>
							</td>
						</tr>
						<tr>
							<td>Imagine în listă</td>
							<td>
								<img src='{{ asset("img/restaurante/".$restaurant->img."/icon.jpg") }}' class='edit-restaurant-img'>
							</td>
						</tr>
						<tr>
							<td>Schimbă imaginea în listă</td>
							<td>
								<input type='file' name='icon' class='form-control'>
							</td>
						</tr>
						<tr>
							<td>Banner</td>
							<td>
								<img src='{{ asset("img/restaurante/".$restaurant->img."/banner.jpg") }}' class='edit-restaurant-img'>
							</td>
						</tr>
						<tr>
							<td>Schimbă Banner</td>
							<td>
								<input type='file' name='banner' class='form-control'>
							</td>
						</tr>

						@if ($restaurant->updated_at != null)
							<tr>
								<td>Ultima actualizare</td>
								<td>{{ $restaurant->updated_at }}</td>
							</tr>
						@endif
					</table>
					<input type='hidden' name='img' value='{{ $restaurant->img }}'>
					<input type='hidden' name='id' value='{{ $restaurant->id }}'>
					<button type='submit' name='updateRestaurant' class='btn btn-warning'>Actualizare</button>
				</form>
			@endif	
		</div>
	</div>
@endsection