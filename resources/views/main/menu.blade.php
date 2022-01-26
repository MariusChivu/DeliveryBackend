<nav class='navbar navbar-expand-lg glass-bg' id='navbar'>
	<div class='container'>
		<div class='navbar-brand-div'>
			<a class='navbar-brand' href='/'><img src='{{ asset("img/logo.png") }}' alt='Food Delivery'>&nbsp; {{ config("app.name") }}</a>
		</div>

		<div class='navbar-toggler hamburger' data-bs-toggle='collapse' data-bs-target='#navbarCollapse'>
			<input type='checkbox' id='hamburger-check'>
			<span></span><span></span><span></span>
		</div>

		<div class='collapse navbar-collapse' id='navbarCollapse'>
			<ul class='navbar-nav align-items-center'>
				<li class='nav-item'><a class='nav-link' href='/contact'>Contact</a></li>
				@if ($isLogin == false)
					<li class='nav-item'>
						<a class='nav-link' href='/' data-bs-toggle="modal" data-bs-target="#conectare">
							<i class="fas fa-user-circle"></i>
						</a>
					</li>
				@else
					<li class='nav-item'>
						<a class='nav-link' href='/user'>
							<i class="fas fa-user-cog"></i>
						</a>
					</li>
					@if ($isOwner == true) 
						<li class='nav-item'>
							<a class='nav-link' href='/owner'>
								<i class="fas fa-briefcase"></i>
							</a>
						</li>	
					@endif
					<li class='nav-item'>
						<a class='nav-link' href='/logout' >
							<i class="fas fa-sign-out-alt"></i>
						</a>
					</li>
				
				@endif
				
			</ul>
		</div>

	</div>
</nav>