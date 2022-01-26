@extends('index')
@section('content')
	<div class='container pagina-cont mt-5 mb-5'>
		<div class='row d-flex justify-content-between'>
			@if ($isOwner == false)
				<div class='alert alert-danger'><i class="fas fa-exclamation-triangle"></i> Nu ai acces în această zonă!</div>
			@else
			<div class='cld-md-12 m-4'><h1>Gestionare restaurante</h1></div>
			@if($errors->first() == "restaurant_add_success")
				<div class='alert alert-success'>Noul restaurant a fost adăugat.</div>
			@endif
				@foreach ($restaurants as $item)
					<div class='col-md-5 m-2 order-items mb-5'
					style='background-image: url({{ asset("img/restaurante/".$item->img."/banner.jpg") }});'>
						<div class='p-3 order-items-white'>
							<h2>{{ $item->name }}</h2>
							<div class='d-flex flex-column w-100'>
								<div class='row d-flex mb-2'>
									<div class='col-md-5 m-1 pl-2'>Număr locații: {{ $item->nr_rest }} </div>
									<div class='col-md-5 m-1 pl-2'>Număr produse: {{ $item->nr_product }} </div>
									<div class='col-md-5 m-1 pl-2'>Număr categorii: {{ $item->nr_category }} </div>
									<div class='col-md-5 m-1 pl-2'>Număr comenzi: {{ $item->nr_orders }} </div>
								</div>

								<div class='col-md-12 m-1 pl-2'>Orașe: {{ $item->city }} </div>
								
								<div class='d-flex'>
									<a href='/owner/edit/{{ $item->id }}' class='btn btn-warning m-2'>Editare restaurant</a>
									<a href='/owner/products/{{ $item->id }}' class='btn btn-warning m-2'>Produse</a>
									{{-- <a href='/owner/locations/{{ $item->id }}' class='btn btn-warning m-2'>Locații</a> --}}
								</div>
							</div>
						</div>
					</div>
				@endforeach
				<div class='col-md-12 m-2 order-items mb-5'>
					<div class='p-3 order-items-white'>
						<form action="{{ route("index") }}" method="POST" enctype="multipart/form-data"> {{ csrf_field() }}
							<h2>Adaugă un restaurant nou</h2>
							<input name='name' type='text' class='form-control' placeholder="Nume restaurant" required>
							<div class='d-flex flex-column w-100 m-1'>
								<div class="row g-3 align-items-center mt-2 mb-2">
									<div class="col-auto">
										<select name='city' id='city' class='col-form-label' required>
											<option>Alege orașul</option>
											@foreach ($cityList as $item)
												<option value='{{ $item->id }}'>{{ $item->name }}</option>
											@endforeach
										</select>
									</div>
									
									<div class="col-auto">
										<label for="coords" class="col-form-label">Coordonate:</label>
									</div>
									<div class="col-auto">
										<input type='text' name='coords' id='coords' class='col-form-label' placeholder="Coordonate hartă" required>
									</div>
									<div class="col-auto">
										<label for="icon" class="col-form-label">Imagine listă:</label>
									</div>
									<div class="col-auto w-10">
										<input type='file' name='icon' id='icon' class='col-form-label w-10' required>
									</div>
									
									<div class="col-auto">
										<label for="banner" class="col-form-label">Banner:</label>
									</div>
									<div class="col-auto w-10">
										<input type='file' name='banner' class='col-form-label w-10' required>
									</div>
								</div>
								
								<div class='d-flex w-100'>
									<button type='submit' name='addRestaurant' class='btn btn-success m-2'>Adaugă restaurantul</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			@endif
		</div>
	</div>
@endsection