@extends('index')
@section('content')
	<div id='noArray'>
		<div id='scroll-to-fix-menu'>
			<div class='containter-fluid restaurant-banner'>
					<div class='restaurant-banner' id='banner' 
						style='background-image: url( {{ asset("img/restaurante/".$array[0]."/banner.jpg") }} )'>
					</div>
			</div>

			<div class='container restaurant-nume'>
				<div class='row'>
					<div class='col-md-6 d-flex align-items-center'>
						<h1 class='d-inline' id='nume'> {{ $array[1] }} </h1>
						<span class='d-inline' id='star'> &nbsp;
							@for ($i = 0; $i < (int) $array[3]; $i++)
								<i class='fas fa-star'></i>
							@endfor
							@if (explode('.', $array[3])[1] >= 5)	
								<i class="fas fa-star-half-alt"></i>
							@endif
							{{ $array[3] }}/5
						</span>
						<span class='d-inline badge bg-success pointer ms-2 p-2' data-bs-toggle='modal' data-bs-target='#reviews'>
							<i class='fas fa-star'></i> <i class="fas fa-external-link-alt"></i>
						</span>
						<span class='d-inline badge bg-success pointer ms-2 p-2'>
							<a href='http://www.google.com/maps/place/{{ $coords }}' target="_blank"><i class="fas fa-map-marked-alt"></i></a>
						</span>
						
						
					</div>
				</div>
			</div>
		</div>

		<div class='container-fluid  restaurant-meniu glass-bg2 mt-5 mb-5 p-2' id='meniu'>
			<ul class="nav" id="meniu-item">
				@foreach($categoryMenu as $item)
					<li class="nav-item">
						<a class="nav-link" id="active" href='#id{{ $item[0] }}'>{{ $item[1] }}</a>
					</li>
				@endforeach
			</ul>
		</div>

		<div class='hidden-div mt-5 mb-5 d-none'></div>

		<div class='container restaurant-categorie'>
			<div class='row' id='restaurant-categorie'>
				@foreach($categoryMenu as $item)
					<div id="id{{ $item[0] }}" class="pt-5 mb-5">
						<h1 class="mt-5 d-flex align-items-center">{{ $item[1] }}</h1>
						<ul class="list-group list-group-horizontal row d-flex justify-content-between">
							@foreach ($categoryProduct as $items)
								@for ($i = 0; $i < sizeOf($items); $i++)
									@if ($item[0] == $items[$i]->cat_id)
										<li class="list-group-item col-md-5 m-2 mb-5 p-3 border border-dark d-flex justify-content-between align-items-center produs">
											<div class="produs-text">
												<h4>{{ $items[$i]->name }}</h4>
												<p>{{ $items[$i]->text }}</p>
												<p class="pret"> {{ $items[$i]->price }} RON</p>
												<p class="locationInfo">
													<i class="fas fa-map-marker-alt"></i>Avem nevoie de locația ta pentru a putea comanda.
												</p>
											</div>
											<div class="produs-img">
												<img src="{{ asset("img/restaurante/".$imgFolder."/".$items[$i]->img.".webp") }}" alt="{{ $items[$i]->name }}" width="150px">
											</div>
										</li>
									@endif
								@endfor
							@endforeach
						</ul>
					</div>
					@endforeach
			</div>
		</div>
	</div>

	<div class="modal fade" id="reviews">
		<div class="modal-dialog modal-lg">
			<div class="modal-content ">
				<div class="modal-header">
					<h4 class="modal-title">
						{{ $array[1] }}<br>
						@for ($i = 0; $i < (int) $array[3]; $i++)
							<i class='fas fa-star'></i>
						@endfor
						@if (explode('.', $array[3])[1] >= 5)	
							<i class="fas fa-star-half-alt"></i>
						@endif
					</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
				<div class="modal-body">
					<ul class="list-group list-group-horizontal row d-flex justify-content-center">
						@foreach ($reviews as $item)
					
							<li class="list-group-item col-md-11 m-2 mb-5 p-3 border border-dark d-flex justify-content-center align-items-center produs">
								<div class="produs-text">
									<h4>
										{{ $item->name }}
										@for ($i = 0; $i < $item->star; $i++)
											<i class='fas fa-star'></i>
										@endfor
									</h4>
									<p>{{ $item->text }}</p>
								</div>
							</li>
						@endforeach
					</ul>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Închide</button>
				</div>
			</div>
		</div>
	</div>
@endsection