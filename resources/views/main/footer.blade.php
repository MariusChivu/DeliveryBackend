<div class='scroll-top p-3 m-3 mb-5 d-flex justify-content-center align-items-center' id='scroll-top' onclick="toTop()">
	<i class="fas fa-chevron-up"></i>
</div>

<div class='container-fluid footer'>
	<div class='row'>
		<div class='col-md-3 footer-contact'>
			<h4>Contact</h4>
			<a href='https://www.google.com/maps/place/{{ $contact["address"] }}'>
				<i class="fas fa-map-marker-alt"></i> {{ $contact["address"] }}
			</a>
			<a href='tel: {{ $contact["phone"] }}'><i class="fas fa-phone-alt"></i> {{ $contact["phone"] }}</a>
			<a href='mail: {{ $contact["mail"] }}'><i class="fas fa-envelope"></i> {{ $contact["mail"] }}</a>
		</div>
		<div class='col-md-3'>
			<h3 class='footer-about'><img src='{{ asset("img/logo2.png") }}' alt='{{ config("app.name") }}'> &nbsp;&nbsp; {{ config("app.name") }}</h3>
			<p>{{ env('APP_FOOTER_DESCRIPTION') }}</p>
		</div>
		<div class='col-md-3'>
			<h4>Social Media</h4>
			<div class='social-list'>
				@foreach ($social as $item)
					<div class='social-icon'>
						<a href='{{ $item["url"] }}' aria-label="{{ $item["name"] }}">
							<i class="{{ $item['icon'] }}"></i>
						</a>
					</div>
				@endforeach
			</div>
		</div>
	</div>
</div>
