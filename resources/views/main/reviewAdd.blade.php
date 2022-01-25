<div class="modal fade" id="addReview">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title"><i class="fas fa-check text-success"></i> Recenzie înregistrată</h4>
				<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
			</div>
			<div class="modal-body">
				<p>Recenzia ta a fost înregistrată.</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Închide</button>
			</div>
		</div>
	</div>
</div>

@if($errors->first() == "review_add_success")
<script>
	$(window).on('load', function() {
		$('#addReview').modal('show');
	});
</script>
@endif