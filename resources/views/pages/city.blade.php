@extends('../index')
@section('content')

<div class='container pagina-oras'>
	<div class='row'>
		<div class='col-lg-10'>
			<div class='bara-header'>
				<h1>Livrare de mâncare de la cele mai bune restaurante din orașul <strong>{{ $name }}</strong></h1>
			</div>
		</div>
	</div>
</div>

<div class='container oras-restaurant'>
	<div class='row'>
		<div class='oras-container-restaurant' id='container-oras-restaurant'>
			@foreach ($restaurant as $items)
				@foreach ($items as $item)
					<div class='box-oras-restaurant col-md-2'>
						<a href='/restaurant/{{ $item["name"] }}/{{ $name }}/{{ $items[0]["id"] }}'>
							<span class='oras-nume-restaurant'>{{$item["name"] }}</span>
							<span class='oras-nume-recenzie'><i class='fas fa-star'></i> {{ $item["star"] }}/5 120 km</span>
							<div class='img-box'>
								<img src='{{ asset("img/restaurante/".$item["img"]."/icon.jpg") }}' alt='{{ $item["name"] }}'>
							</div>
						</a>
					</div>
				@endforeach
			@endforeach
		</div>
	</div>
</div>

@endsection