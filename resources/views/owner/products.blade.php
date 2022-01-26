@extends('index')
@section('content')
	<div class='container pagina-cont mt-5 mb-5'>
		<div class='row d-flex justify-content-center'>
			@if ($isOwner == false)
			<div class='alert alert-danger'><i class="fas fa-exclamation-triangle"></i> Nu ai acces în această zonă!</div>
			@else
				<div class='cld-md-12 m-4'><h1>Categorii produse</h1></div>
				@if($errors->first() == "category_add_success")
					<div class='alert alert-success'>Noua categorie a fost adăugată.</div>
				@endif
				@if($errors->first() == "category_delete_success")
					<div class='alert alert-success'>Categoria a fost stearsă.</div>
				@endif
				@if($errors->first() == "category_update_success")
					<div class='alert alert-success'>Categoria a fost actualizată.</div>
				@endif
					
				<table class="table table-striped border">
					<th>Nume</th>
					<th>Opțiuni</th>
					
					@foreach ($category as $item)
						<form action="{{ route("index") }}" method="POST" enctype="multipart/form-data"> {{ csrf_field() }}
						<tr>
							<td>
								<input type='text' name='name' value='{{ $item->name }}' class='form-control' placeholder="Numele categoriei" required>
							</td>
								<td>
									<input type='hidden' name='id' value='{{ $item->id }}'>
									<input type='hidden' name='rest_id' value='{{ $item->rest_id }}'>
									<button type='submit' name='updateCategory' class='btn btn-warning'>Actualizare</button>
									<button type='submit' name='deleteCategory' class='btn btn-danger mt-2'>Ștergere</button>
								</td>
							</tr>
						</form>
					@endforeach
					<form action="{{ route("index") }}" method="POST" enctype="multipart/form-data"> {{ csrf_field() }}
					<tr>
						<td>
							<input type='text' name='name' class='form-control' placeholder="Numele categoriei" required>
						</td>
							<td>
								<input type='hidden' name='rest_id' value='{{ $rest_id }}'>
								<button type='submit' name='addCategory' class='btn btn-primary'>Adaugă categorie nouă</button>
							</td>
						</tr>
					</form>
				</table>

				<div class='cld-md-12 m-4'><h1>Listă produse</h1></div>
				@if($errors->first() == "product_add_success")
					<div class='alert alert-success'>Noul produs a fost adăugat.</div>
				@endif
				@if($errors->first() == "product_delete_success")
					<div class='alert alert-success'>Produsul a fost stears.</div>
				@endif
				@if($errors->first() == "product_update_success")
					<div class='alert alert-success'>Produsul a fost actualizat.</div>
				@endif
				<table class="table table-striped border">
					<th>#</th>
					<th>Nume</th>
					<th>Preț</th>
					<th>Categorie</th>
					<th>Descriere</th>
					<th>Opțiuni</th>

					@foreach ($product as $item)
					<form action="{{ route("index") }}" method="POST" enctype="multipart/form-data"> {{ csrf_field() }}
						<tr>
							<td>
								<img src='{{ asset("img/restaurante/".$item->img_folder."/".$item->img.".webp") }}' class='edit-restaurant-img'><br>
								<input type='file' name='img'>
							</td>
							<td>
								<input type='text' name='name' class='form-control' value="{{ $item->name }}" required>
							</td>
							<td>
								<input type='number' name='price' class='form-control' value="{{ $item->price }}" required>
							</td>
							<td>
								<select type='text' name='cat_id' class='form-control' required>
									<option value="{{ $item->cat_id }}">{{ $item->cat_name }}</option>
									@foreach ($category as $cat)
										<option value="{{ $cat->id }}">{{ $cat->name }}</option>
									@endforeach
								</select>
							</td>
							<td>
								<textarea type='text' name='text' class='form-control product-textarea'>{{ $item->text }}</textarea>
							</td>
							<td>
								<input type='hidden' name='id' value='{{ $item->id }}'>
								<input type='hidden' name='rest_id' value='{{ $item->rest_id }}'>
								<button type='submit' name='updateProduct' class='btn btn-warning'>Actualizare</button>
								<button type='submit' name='deleteProduct' class='btn btn-danger mt-2'>Ștergere</button>
							</td>
						</tr>
					</form>
					@endforeach
					<form action="{{ route("index") }}" method="POST" enctype="multipart/form-data"> {{ csrf_field() }}
						<tr>
							<td>
								<input type='file' name='img'>
							</td>
							<td>
								<input type='text' name='name' class='form-control' required>
							</td>
							<td>
								<input type='number' name='price' class='form-control' required>
							</td>
							<td>
								<select type='text' name='cat_id' class='form-control' required>
									<option>Alege categoria</option>
									@foreach ($category as $cat)
										<option value="{{ $cat->id }}">{{ $cat->name }}</option>
									@endforeach
								</select>
							</td>
							<td>
								<textarea type='text' name='text' class='form-control product-textarea'></textarea>
							</td>
							<td>
								<input type='hidden' name='rest_id' value='{{ $rest_id }}'>
								<button type='submit' name='addProduct' class='btn btn-primary'>Adaugă produs nou</button>
							</td>
						</tr>
					</form>
				</table>
			@endif	
		</div>
	</div>
@endsection