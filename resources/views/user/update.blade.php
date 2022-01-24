@extends('index')
@section('content')
	<div class='container pagina-cont mt-5 mb-5'>
		<div class='row d-flex justify-content-center'>
			<div class='cld-md-12 m-4'><h1>Actualizare card</h1></div>
			@if ($isLogin == false)
				<div class='alert alert-danger'>Trebuie să te conectezi la cont! </div>
			@else

				@if($errors->first() == "update_card_success")
					<div class='alert alert-success'>Cardul a fost actualizat.</div>
				@endif

				<div class='col-md-5 m-2 mb-5 card'>
					<div class='p-3 card-white'>
						<h2 class=''><i class="far fa-credit-card"></i> Card</h2>
						<form action="{{ route("index") }}" method="POST"> {{ csrf_field() }}
							<p>Actualizează datele cardului.</p>
							<p>
								Număr card: 
								<input type='number' name='card_number' class='form-control d-inline' value='{{ $details->card_number }}' required readonly disabled>
							</p>
							<p>
								<div class="row g-3 align-items-center">
									<div class="col-auto">
										<label for="exp_month" class="col-form-label">Luna:</label>
									</div>
									<div class="col-auto">
										<input type="number" name="exp_month" id="exp_month" class="form-control input-card" value='{{ $details->exp_month }}' required>
									</div>
									
									<div class="col-auto">
										<label for="exp_year" class="col-form-label">Anul:</label>
									</div>
									<div class="col-auto">
										<input type="number" name="exp_year" id="exp_year" class="form-control input-card" value='{{ $details->exp_year }}' required>
									</div>
									
									<div class="col-auto">
										<label for="cvv" class="col-form-label">CVV:</label>
									</div>
									<div class="col-auto">
										<input type="number" name="cvv" id="cvv" class="form-control input-card" required>
									</div>
								</div>
							</p>
							<input type='hidden' name='id' value='{{ $details->id }}'>
							<button type='submit' name='updateCard' class='btn btn-warning'>Actualizează Cardul</button>
						</form>
					</div>
				</div>
			@endif	
		</div>
	</div>
@endsection