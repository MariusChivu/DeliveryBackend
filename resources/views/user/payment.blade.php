@extends('index')
@section('content')
	<div class='container pagina-cont mt-5 mb-5'>
		<div class='row d-flex justify-content-between'>
			<div class='cld-md-12 m-4'><h1>Metode de plată</h1></div>
			@if ($isLogin == false)
				<div class='alert alert-danger'>Trebuie să te conectezi la cont! </div>
			@else

				@if($errors->first() == "add_card_success")
					<div class='alert alert-success'>Noul card a fost adăugat.</div>
				@endif

				@if($errors->first() == "delete_card_success")
					<div class='alert alert-success'>Cadul a fost șters.</div>
				@endif

				<div class='col-md-5 m-2 mb-5 card'>
					<div class='p-3 card-white'>
						<h2 class='mb-5'><i class="fas fa-money-bill-wave"></i> Plata la livrare</h2>
						<p>Plătești cash la primirea comenzii.</p>
					</div>
				</div>

				@foreach ($method as $item)
					<div class='col-md-5 m-2 mb-5 card'>
						<div class='p-3 card-white'>
							<h2 class=''><i class="fas fa-money-check"></i> Card</h2>
							<p>Plătești online la înregistrarea comenzii.</p>
							<p>
								Număr card: 
								<strong>{{ $item->card_number }}</strong>
							</p>
							<p>
								Luna: 
									<strong>{{ $item->exp_month }}</strong> 
								Anul: 
									<strong>{{ $item->exp_year }}</strong>
							</p>
							<p>
								<form action="{{ route("index") }}" method="POST"> {{ csrf_field() }}
									<a href='/user/payment/update/{{ $item->id }}' class='btn btn-warning'>Actualizează Cardul</a>
									<input type='hidden' name='id' value='{{ $item->id }}'>
									<button type='submit' name='deleteCard' class='ms-3 btn btn-danger'>Șterge Cardul</button>
								</form>
							</p>
						</div>
					</div>
				@endforeach
				<div class='col-md-5 m-2 mb-5 card'>
					<div class='p-3 card-white'>
						<h2 class=''><i class="far fa-credit-card"></i> Card</h2>
						<form action="{{ route("index") }}" method="POST"> {{ csrf_field() }}
							<p>Adaugă un card nou.</p>
							<p>
								Număr card: 
								<input type='number' name='card_number' class='form-control d-inline' required>
							</p>
							<p>
								<div class="row g-3 align-items-center">
									<div class="col-auto">
										<label for="exp_month" class="col-form-label">Luna:</label>
									</div>
									<div class="col-auto">
										<input type="number" name="exp_month" id="exp_month" class="form-control input-card" required>
									</div>
									
									<div class="col-auto">
										<label for="exp_year" class="col-form-label">Anul:</label>
									</div>
									<div class="col-auto">
										<input type="number" name="exp_year" id="exp_year" class="form-control input-card" required>
									</div>
									
									<div class="col-auto">
										<label for="cvv" class="col-form-label">CVV:</label>
									</div>
									<div class="col-auto">
										<input type="number" name="cvv" id="cvv" class="form-control input-card" required>
									</div>
								</div>
							</p>
							<button type='submit' name='addCard' class='btn btn-success'>Adaugă Cardul</button>
						</form>
					</div>
				</div>

			@endif
				
		</div>
	</div>
@endsection