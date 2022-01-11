@extends('../index')
@section('content')
	<div id='noArray'>
		<div id='scroll-to-fix-menu'>
			<div class='containter-fluid restaurant-banner'>
					<div class='restaurant-banner' id='banner'> <!-- imagine setata in javascript --> </div>
			</div>

			<div class='container restaurant-nume'>
				<div class='row'>
					<div class='col-md-6'>
						<h1 class='d-inline' id='nume'> <!-- nume scris in javascript --> </h1>
						<span class='d-inline' id='star'> <!-- nr stele scris in javascript --> </span>
					</div>
				</div>
			</div>
		</div>

		<div class='container-fluid  restaurant-meniu glass-bg2 mt-5 mb-5 p-2' id='meniu'>
			<ul class="nav" id="meniu-item">
				<!-- meniu generat din javascript  -->
			</ul>
		</div>

		<div class='hidden-div mt-5 mb-5 d-none'></div>

		<div class='container restaurant-categorie'>
			<div class='row' id='restaurant-categorie'>
				<!-- continut generat din javascript -->
			</div>
		</div>
	</div>
@endsection