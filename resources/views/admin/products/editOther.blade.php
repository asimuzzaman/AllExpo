@extends('layout.dash')

@section('title', $title)

@section('content')
	<h1 class="h3 mb-2 text-gray-800">{{ $title }}</h1>
    <p class="mb-4">In this page {{ app('NAME') }} admins can edit existing product in database</p>

    @if ($errors->any())
	    <div class="alert alert-danger">
	        <ul>
	            @foreach ($errors->all() as $error)
	                <li>{{ $error }}</li>
	            @endforeach
	        </ul>
	    </div>
	@endif

 	<form class="text-center border border-light" action="/admin/other/{{$data->id}}/edit" method="POST" enctype="multipart/form-data">
 		@csrf
 		<input type="hidden" name="user_id" value="{{ Auth::user()->id }}">

 		<input type="text" class="form-control mb-4" name="name" value="{{ $data->name }}" placeholder="Name. Ex. Onion">

 		<input type="text" class="form-control mb-4" name="price" value="{{ $data->price }}" placeholder="Price. Ex. 120.00">

 		<input type="text" class="form-control mb-4" name="min_order" value="{{ $data->min_order }}" placeholder="Minimum Order. Ex. 20 KG">

 		<input type="text" class="form-control mb-4" name="condition" value="{{ $data->condition }}" placeholder="Condition. Ex. Fresh">

 		<textarea class="form-control mb-4" name="description" placeholder="Description">{{ $data->description }}</textarea>

		<div class="input-group mb-4">
			<div class="input-group-prepend">
				<span class="input-group-text" id="imageUpload">Change Image</span>
			</div>
			<div class="custom-file">
				<input type="file" class="custom-file-input" name="image" id="imageUpload01"
				  aria-describedby="imageUpload" accept="image/png, image/jpeg, image/gif">
				<label class="custom-file-label" for="imageUpload01">Choose file</label>
			</div>
		</div>


        <div class="custom-control custom-checkbox mb-2">
            <input type="checkbox" class="custom-control-input" id="available" name="available" {{ $data->in_stock == 1 ? 'checked' : '' }}>
            <label class="custom-control-label" for="available">Available</label>
        </div>

        <img class="mb-4" id="imageShow" src="/uploads/{{ $data->image }}" height="200">

	    <button class="btn btn-info btn-block col-lg-2 col-sm-6" type="submit">Save</button>

	</form>											
@endsection

@section('script')
	<script type="text/javascript">
		$(document).ready(function() {
			//function for showing uploaded image instantly
			$('#imageUpload01').change(function(){
				readURL(this);
			})
		});

		function readURL(input) {
		 	if (input.files && input.files[0]) {
		    	var reader = new FileReader();
		    
		    	reader.onload = function(e) {
		      		$('#imageShow').attr('src', e.target.result);
		      		$('#imageShow').show();
		    	}
		    
		    reader.readAsDataURL(input.files[0]); // convert to base64 string
		  }
		}
	</script>
@endsection