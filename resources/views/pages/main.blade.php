@extends('index')
@section('content')
<div class='container header-locatie'>
	<div class='row'>
		<div class='col-lg-7'>
			<div class='bara-header glass-bg3'>
				<h1>Este mancarea pe care o dorești livrată acasă sau la birou!</h1>
				<div class='bara-locatie' onclick='getLocation()'>
					<input type='text' class='form-control form-control-lg shadow-none pointer' id='inputLocatie' placeholder='Locația mea'>
					<i class="fas fa-map-marker-alt pointer"></i>
				</div>
			</div>
		</div>
	</div>
</div>

<div class='container orase'>
	<div class='row'>
			<h2>Caută-ne in orașul tău</h2>
			<div class='orase-container' id='container-oras'>
				@foreach ($citys as $item)
					<div class='box-oras col-md-2'>
						<a href='{{ url("city")}}/{{ $item->name }}'>
							<span class='oras-nume'>{{ $item->name }}</span>
							<div class='img-box'>
								<img src='{{ asset("img/orase/".$item->img )}}.jpg'alt='{{ $item->name }}' >
							</div>
						</a>
					</div>
				@endforeach
			</div>
	</div>
</div>

<div class='container'>
	<div class='row'>
		<h2>Adaugă-ne în buzunarul tău</h2>
	</div>
</div>
<div class='container-fluid descarca'>
	<div class='container'>
		<div class='row'>
			<div class='descarca-container'>
				<div class='col-md-6'>
					<h3>{{ env("APP_NAME") }} în buzunarul tău!</h3>
					<p>Descarcă aplicația, este cel mai rapid mod de a-ți comanda mâncare.</p>
					<div class='app-download'>
						@foreach ($download as $item)	
							<a href='{{ $item["url"] }}' class='{{ $item["class"] }} m-1'>
								<i class='{{ $item["icon"] }}'></i> {{ $item["name"] }}
							</a>
						@endforeach
					</div>
				</div>
				<div class='col-md-6 descarca-img'>
					<img src='{{ asset("/img/phone.webp") }}' alt='Descarca {{ config("app.name") }}'>
				</div>
			</div>
		</div>
	</div>
</div>

<div class='container livrare'>
	<div class='row'>
		<ul class='list-group list-group-flush'>
			<li class='list-group-item'><h4>{{ config("app.name") }} iți aduce aproape preparatele tale preferate.</h4></li>
			<li class='list-group-item'>✓ Ai peste 400 de restaurante și branduri exclusive pentru a-ți potoli foamea.</li>
			<li class='list-group-item'>✓ Livratori pregătiți pentru a-ți livra mancarea proaspătă în cel mai scurt timp posibil.</li>
			<li class='list-group-item'>✓ Serviciu de relații cu clienții prietenos pentru a te ajuta în orice situație.</li>
		</ul>

		<ul class='list-group list-group-flush'>
			<li class='list-group-item'><h4>Cum să comanzi mâncare online de la cele mai apreciate restaurante din zona ta:</h4></li>
			<li class='list-group-item'>1 Activează locația pentru a vedea restaurantele din zonă</li>
			<li class='list-group-item'>2 Alege restaurantul dorit</li>
			<li class='list-group-item'>3 Selectează preparatele tale și adaugă produsele în coșul tău</li>
			<li class='list-group-item'>4 Selectează "Finalizare comandă"</li>
			<li class='list-group-item'>5 Confirmă comanda și introdu detaliile adresei unde dorești livrarea</li>
			<li class='list-group-item'>6 Plătește și așteaptă sș ajungă mâncarea</li>
			<li class='list-group-item'></li>
		</ul>
	</div>
</div>

<div class='container lant-restaurante'>
	<div class='row' id='popRest'>
		<h4>Restaurante populare</h4>
			@foreach ($popularRestaurant as $item)	
				<div class='col-md-2'>
					{{ $item[1] }}<br>
					@for ($i = 0; $i < (int) $item[0]; $i++)
						<i class='fas fa-star'></i>
					@endfor
					@if (explode('.', $item[0]) >= 5)	
						<i class="fas fa-star-half-alt"></i>
					@endif
				</div>
			@endforeach
	</div>
</div>		

<div class="modal fade" id="modalLocatie">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title"><i class="fas fa-map-marker-alt"></i> Locație</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<div class="modal-body">
				<p>Avem nevoie de locația ta pentru a vedea restaurantele din apropiere!</p>
				<p>Te rugăm să activezi locația și să încerci iar.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Închide</button>
			</div>
		</div>
	</div>
</div>

@endsection