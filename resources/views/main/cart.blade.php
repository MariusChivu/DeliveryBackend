<div class='cart-fixed-count d-flex justify-content-center align-items-center badge rounded-pill'>{{ Cart::content()->count() }}</div>
<div class='cart-fixed p-3 m-3 d-flex justify-content-center align-items-center'  data-bs-toggle="modal" data-bs-target="#cos">
	<i class="fas fa-shopping-cart"></i>
</div>

<div class="modal fade" id="cos">
	<div class="modal-dialog modal-dialog-scrollable modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title"><i class="fas fa-shopping-cart"></i> Coșul tău</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<div class="modal-body" id="cartBody">
				@if (Cart::content()->count() == 0)
					<h3>Nu sunt produse adăugate în coș</h3>
				@else
					@if($errors->first() == "login_finalCart")
						<div class='alert alert-danger'>
							Trebuie să te conectezi la cont pentru a finaliza comanda.
						</div>
					@endif
					<h2 id='cartRest'>{{ Session::get("restaurantCart") }}</h2>

					<table class='table table-striped table-hover table-cos'>
					<th>#</th>
						<th>Nume</th>
						<th>Preț</th>
						<th>Cantitate</th>
						<th>Total</th>
						<th class="text-center"><i class="fas fa-trash"></i></th>
						@foreach (Cart::content() as $item)						
							<tr>
								<td>
									<img src="{{ asset($item->options[0]["img"]) }}">
								</td>
								<td>{{ $item->name }}</td>
								<td>{{ $item->price }} RON</td>
								<td>{{ $item->qty }} BUC</td>
								<td>{{ $item->price * $item->qty }} RON</td>
								<td>
									<form action="{{ route('index') }}" method="POST"> {{ csrf_field() }}
										<input type='hidden' name='id' value='{{ $item->name }}'>
										<button type='submit' name='removeItem' class='btn'><i class="fas fa-trash pointer"></i></button>
									</form>
								</td>
							</tr>
						@endforeach
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td>Total coș</td>
							<td>{{ Cart::subtotal() }}</td>
							<td>RON</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td>Taxă de livrare</td>
							<td>7.99</td>
							<td>RON</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td>Total coș + livrare</td>
							<td>{{ Cart::subtotal() + 7.99 }}</td>
							<td>RON</td>
						</tr>
					</table>
				@endif
			</div>
			<div class="modal-footer">
				@if (Cart::content()->count() > 0)
					<form action="{{ route("index") }}" method="POST" > {{ csrf_field() }}
						<button type="submit" name='finalCart' class="btn btn-success">Finalizare comandă</button>
						<button type="submit" name='resetCart' class="btn btn-warning">Resetare coș</button>
					</form>
				@endif
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Închide</button>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="modalAltRestaurant">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title"><i class="fas fa-exclamation-triangle text-danger"></i> Restaurant</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<div class="modal-body">
				<p>Ai adăugat deja produse din alt restaurant !</p>
				<p>Dacă vrei să comanzi din altă locație trebuie să resetezi coșul.</p>
			</div>
			<div class="modal-footer">
				<form action="{{ route("index") }}" method="POST" > {{ csrf_field() }}
					<button type="submit" name='resetCart' class="btn btn-warning">Resetare coș</button>
					<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Închide</button>
				</form>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="registerComanda">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title"><i class="fas fa-check text-success"></i> Comandă înregistrată</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<div class="modal-body">
				<p>Coamnda ta a fost înregistrată.</p>
				<p>Restaurantul va pregăti comanda ta și o va preda curierului nostru pentru livrare.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Închide</button>
			</div>
		</div>
	</div>
</div>

@if($errors->first() == "other_restaurant")
<script>
	$(window).on('load', function() {
		$('#modalAltRestaurant').modal('show');
	});
</script>
@endif

@if($errors->first() == "login_finalCart")
<script>
	$(window).on('load', function() {
		$('#cos').modal('show');
	});
</script>
@endif

@if($errors->first() == "register_comanda")
<script>
	$(window).on('load', function() {
		$('#registerComanda').modal('show');
	});
</script>
@endif