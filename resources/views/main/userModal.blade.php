<div class="modal fade" id="conectare">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title"><i class="fas fa-sign-in-alt"></i> Conectare</h4>
				<h4 class="modal-title ms-3"><strong>/</strong></h4>
				<h4 class="modal-title ms-3"><i class="fas fa-user-plus"></i> Înregistrare</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<div class="modal-body">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item" role="presentation">
						<button class="nav-link active" 
						id="connect-tab" data-bs-toggle="tab" data-bs-target="#connect" 
						type="button" role="tab" aria-controls="connect" aria-selected="true">
							<strong class='w-100 d-flex justify-content-center fs-1'><i class="fas fa-user-tie"></i></strong>
						</button>
					</li>
					<li class="nav-item" role="presentation">
						<button class="nav-link" 
						id="register-tab" data-bs-toggle="tab" data-bs-target="#register, #register-title" 
						type="button" role="tab" aria-controls="register" aria-selected="false">
							<strong class='w-100 d-flex justify-content-center fs-1'><i class="fas fa-user-plus"></i></strong>
						</button>
					</li>
				</ul>
				<div class="tab-content" id="myTabContent">
					@if($errors->first() == "login_error")
						<div class='alert alert-danger mt-3'>Email sau parolă incorectă!</div>
					@endif
					@if($errors->first() == "register_error")
						<div class='alert alert-danger mt-3'>Acest email este deja folosit!</div>
					@endif
					@if($errors->first() == "register_success")
						<div class='alert alert-success mt-3'>Contul tău a fost creat cu succes.<br>Acum te poți conecta.</div>
					@endif
						<div class="tab-pane fade show active" id="connect" role="tabpanel" aria-labelledby="connect-tab">
							<form action="{{ route("index") }}" method='POST'> {{ csrf_field() }}
								<div class="input-group mt-4">
									<span class="input-group-text">E-mail</span>
									<input type="email" name='email' value='marius.chivu95@yahoo.com' class="form-control" placeholder="Introdu e-mailul" autocomplete="off" required>
								</div>
								<div class="input-group mt-4 mb-4">
									<span class="input-group-text">Parola</span>
									<input type="password" name='password' value='admin' class="form-control" placeholder="Introdu parola" autocomplete="off" required>
								</div>
								<div class="modal-footer">
									<button type="submit" name='login' class="btn btn-success">Conectare</button>
									<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Închide</button>
								</div>
							</form>
						</div>

					<div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
						<form action="{{ route("index") }}" method='POST'> {{ csrf_field() }}
							<div class="input-group mt-4 mb-4">
								<span class="input-group-text">Nume și prenume</span>
								<input type="text" name='name' class="form-control" placeholder="Introdu numele și prenumele" autocomplete="off" required>
							</div>
							<div class="input-group mt-4 mb-4">
								<span class="input-group-text">Număr de telefon</span>
								<input type="text" name='phone' class="form-control" placeholder="Introdu numărul de telefon" autocomplete="off" required>
							</div>
							<div class="input-group mt-4">
								<span class="input-group-text">E-mail</span>
								<input type="email" name='email' class="form-control" placeholder="Introdu e-mailul" autocomplete="off" required>
							</div>
							<div class="input-group mt-4 mb-4">
								<span class="input-group-text">Parola</span>
								<input type="password" name='password' class="form-control" placeholder="Introdu parola" autocomplete="off" required>
							</div>
							<div class="modal-footer">
								<button type="submit" name='register' class="btn btn-warning">Înregistrare</button>
								<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Închide</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

@if($errors->first() == "login_error" || $errors->first() == "register_error" || $errors->first() == "register_success")
<script>
	$(window).on('load', function() {
		$('#conectare').modal('show');
	});
</script>
@endif