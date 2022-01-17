@extends('../index')
@section('content')
	<div class='container pagina-oras'>
		<div class='row'>
			<div class='col-lg-10'>
				<div class='bara-header'>
					<h1>Comandă de la unul din restaurentele din aproierea ta.</h1>
					<h3>Restaurantele sunt ordonate după <strong>{{ $sort_name }}</strong>.</h3>
					<a class='badge bg-success sort-button' href='/near/star' ><i class="fas fa-sort-alpha-down"></i></i> Ordonare după <i class='fas fa-star'></i> ranting</a>
					<a class='badge bg-success sort-button' href='/near/distance' ><i class="fas fa-sort-alpha-down"></i></i> Ordonare după <i class="fas fa-ruler"></i> distanță</a>
				</div>
			</div>
		</div>
	</div>

	<div class='container oras-restaurant'>
		<div class='row'>
				<div class='oras-container-restaurant'>
					@foreach ($restaurant as $item)						
						<div class='box-oras-restaurant col-md-2'>
							<a href='/restaurant/{{ $item["name"] }}/{{ $item["city"] }}/{{ $item["id"] }}'>
								<span class='oras-nume-restaurant'>{{ $item["name"] }}</span>
								<span class='oras-nume-recenzie'>
									@for ($i = 0; $i < $item["star_no0"]; $i++)
										<i class='fas fa-star'></i>
									@endfor
									
									@if ($item["star_no1"] >= 5)	
										<i class="fas fa-star-half-alt"></i>
									@endif
									<br>{{ $item["distance_name"] }}
								</span>
								<div class='img-box'>
									<img src='{{ asset("img/restaurante/".$item['img']."/icon.jpg") }}' alt='{{ $item["name"] }}'>
								</div>
							</a>
						</div>
					@endforeach

				</div>			
		</div>
	</div>
@endsection