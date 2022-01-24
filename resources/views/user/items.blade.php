@extends('index')
@section('content')
	<div class='container pagina-cont mt-5 mb-5'>
		<div class='row d-flex justify-content-center'>
			<div class='cld-md-12 m-4'><h1>Detalii comandă</h1></div>
			@if ($isLogin == false)
				<div class='alert alert-danger'>Trebuie să te conectezi la cont! </div>
			@else				
				<table class='table table-striped table-hover table-cos'>
					<th>#</th>
					<th>Nume</th>
					<th>Preț</th>
					<th>Cantitate</th>
					<th>Total</th>
					@foreach ($items as $item)						
						<tr>
							<td>
								<img src="{{ asset($item->img) }}">
							</td>
							<td>{{ $item->name }}</td>
							<td>{{ $item->price }} RON</td>
							<td>{{ $item->cant }} BUC</td>
							<td>{{ $item->price * $item->cant }} RON</td>
						</tr>
					@endforeach
				</table>
			@endif		
		</div>
	</div>
@endsection