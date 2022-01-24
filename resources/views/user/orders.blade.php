@extends('index')
@section('content')
	<div class='container pagina-cont mt-5 mb-5'>
		<div class='row d-flex justify-content-center'>
			<div class='cld-md-12 m-4'><h1>Comenzile mele</h1></div>
			@if ($isLogin == false)
				<div class='alert alert-danger'>Trebuie să te conectezi la cont! </div>
			@else				
				@foreach ($order as $item)
					<div class='col-md-5 m-2 order-items'
					style='background-image: url({{ asset("img/restaurante/".$item->rest_img."/banner.jpg") }});'>
						<div class='p-3 order-items-white'>
							<h2>{{ $item->restaurant }}</h2>
							<p>Subtotal: {{ $item->subtotal }} RON</p>
							<p>Taxă livrare: {{ $item->deliver }} RON</p>
							<p>Total: {{ $item->total }} RON</p>
							<p>Data: {{ $item->date }}</p>
							<p><a href='/user/orders/items/{{ $item->cart_token }}' class='btn btn-warning'>Detalii comandă</a></p>
						</div>
					</div>
				@endforeach

			@endif
				
		</div>
	</div>
@endsection