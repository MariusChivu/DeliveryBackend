<nav class='navbar navbar-expand-lg glass-bg' id='navbar'>
	<div class='container'>
		<div class='navbar-brand-div'>
			<a class='navbar-brand' href='index.php'><img src='{{ asset("img/logo.png") }}' alt='Food Delivery'>&nbsp; {{ config("app.name") }}</a>
		</div>

		<div class='navbar-toggler hamburger' data-bs-toggle='collapse' data-bs-target='#navbarCollapse'>
			<input type='checkbox' id='hamburger-check'>
			<span></span><span></span><span></span>
		</div>

		<div class='collapse navbar-collapse' id='navbarCollapse'>
			<ul class='navbar-nav'>
				<li class='nav-item'><a class='nav-link' href='contact.php'>Contact</a></li>
				<li class='nav-item'><a class='nav-link' href='index.php' data-bs-toggle="modal" data-bs-target="#conectare"><i class="fas fa-user-circle"></i></a></li>
				<!-- <li class='nav-item'><a class='nav-link' href='index.php' data-bs-toggle="modal" data-bs-target="#cos"><i class="fas fa-shopping-cart"></i></a></li> -->
			</ul>
		</div>

	</div>
</nav>