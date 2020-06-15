@extends('layout.dash')

@section('title', $title)

@section('content')
	<h1 class="h3 mb-2 text-gray-800">{{ $title }}</h1>
    <p class="mb-4">In this page {{ app('NAME') }} admins can edit {{ $data->name }}'s data in database</p>

    @if ($errors->any())
	    <div class="alert alert-danger">
	        <ul>
	            @foreach ($errors->all() as $error)
	                <li>{{ $error }}</li>
	            @endforeach
	        </ul>
	    </div>
	@endif

 	<form class="text-center border border-light" action="/admin/mango/{{$data->id}}/edit" method="POST" enctype="multipart/form-data">
 		@csrf

 		<input type="hidden" name="user_id" value="{{ Auth::user()->id }}">

 		<input type="text" class="form-control mb-4" value="{{ $data->name }}" name="name" placeholder="Name. ex. Miniket" required>

 		<input type="text" class="form-control mb-4" value="{{ $data->price }}" name="price" placeholder="Price (in BDT). ex. 120.0">

 		<input type="text" class="form-control mb-4" pvalue="{{ $data->min_order }}" name="min_order" placeholder="Minimum Order. ex. 200 KG">

 		<textarea class="form-control mb-4" placeholder="Description">{{ $data->description }}</textarea>

 		<input type="text" class="form-control mb-4" value="{{ $data->origin }}" name="origin" placeholder="Origin. ex. Bangladesh">

 		<input type="text" class="form-control mb-4" value="{{ $data->color }}" name="color" placeholder="Color. ex. Green">

 		<input type="text" class="form-control mb-4" value="{{ $data->avg_weight }}" name="avg_weight" placeholder="Average weight. ex. 1">

 		<input type="text" class="form-control mb-4" value="{{ $data->cultivation_type }}" name="cultivation_type" placeholder="Cultivation. type ex. Common">

 		<input type="text" class="form-control mb-4" value="{{ $data->variety }}" name="variety" placeholder="Variety. ex. AMRAPALI">

 		<input type="text" class="form-control mb-4" value="{{ $data->grade }}" name="grade" placeholder="Grade. ex. High">

 		<input type="text" class="form-control mb-4" value="{{ $data->size }}" name="size" placeholder="Size. ex. 9-12 cm">

		<input type="text" class="form-control mb-4" value="{{ $data->style }}" name="style" placeholder="Style. ex. Fresh">

		<input type="text" class="form-control mb-4" value="{{ $data->type }}" name="type" placeholder="Type. ex. Mango">

		<input type="text" class="form-control mb-4" value="{{ $data->ripening }}" name="ripening" placeholder="Ripening. ex. 7 days post harvest">

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
        {{-- show uploaded image here --}}
        <img class="mb-4" id="imageShow" src="/uploads/{{ $data->image }}" height="200">


	    <!-- Sign in button -->
	    <button class="btn btn-info btn-block col-2" type="submit">Save</button>

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