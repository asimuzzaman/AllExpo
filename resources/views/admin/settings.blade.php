@extends('layout.dash')

@section('title', $title)

@section('content')
	<form class="text-center border border-light" action="/admin/settings" method="POST">
		@csrf
		<label>Homepage banner 1</label>
		<input type="text" class="form-control mb-4" name="home_banner_1" value="{{$data['home_banner_1']}}">

		<label>Homepage banner 2</label>
		<input type="text" class="form-control mb-4" name="home_banner_2" value="{{$data['home_banner_2']}}">

		<label>Admin Login image</label>
		<input type="text" class="form-control mb-4" name="admin_login_image" value="{{$data['admin_login_image']}}">

		<label>Support email</label>
		<input type="text" class="form-control mb-4" name="support_email" value="{{$data['support_email']}}">

		<label>Upcoming product image</label>
		<input type="text" class="form-control mb-4" name="upcoming_product" value="{{$data['upcoming_product']}}">

		<button class="btn btn-info btn-block col-lg-2 col-sm-6" type="submit">Save</button>
	</form>
@endsection