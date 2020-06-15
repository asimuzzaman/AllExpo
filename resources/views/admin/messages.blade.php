@extends('layout.dash')

@section('title', $title)

@section('style')
	<style type="text/css">
		.message-footer {
			font-size: 15px;
		}
	</style>
@endsection

@section('content')

	<!-- Page Heading -->
    <h1 class="h3 mb-1 text-gray-800">{{ $title }}</h1>
    <p class="mb-4"><span style="color: green">Green</span> border means solved message, <span style="color: red;">Red</span> border means unsolved. Click on tick marked button to toggle between solved/unsolved. </p>

	<div class="row">
		@foreach($data as $message)
			<div id="{{ $message->id }}" class="col-lg-12 col-md-6 col-sm-12">
				@if($message->is_solved)
					<div class="card mb-4 py-3 border-left-success" id="card{{$message->id}}">
				@else
					<div class="card mb-4 py-3 border-left-danger" id="card{{$message->id}}">
				@endif
						<div class="card-body">
							<strong>fdbk#{{ $message->id }}</strong>
							<button id="toggle{{$message->id}}" class="btn btn-success btn-circle btn-sm" onclick="toggleSolved({{ $message->id }})">
								<i class="fas fa-check"></i>
							</button>
							<button class="btn btn-danger btn-circle btn-sm" onclick="remove({{ $message->id }})">
								<i class="fas fa-trash"></i>
							</button>
							<br>
								<p style="text-align: justify;">{{ $message->message }}</p><hr>
							<div class="message-footer">
								Sent by: {{ $message->name }}, email: <a href="mailto://{{ $message->email }}">{{ $message->email }}</a> on {{ $message->created_at }}
							</div>
							
						</div>
					</div>
			</div>
		@endforeach	
	</div>
@endsection

@section('script')
	<script type="text/javascript">
		$(document).ready(function() {
			$.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
		});

		function remove(id) {
			$.ajax({
				url: '/admin/messages',
				type: 'POST',
				dataType: 'json',
				data: { 'id' : id, 'work' : 'remove'},
				success: function (info) {
					console.log(info);
					$('div#'+id).fadeOut();
				},
				error: function(info) {
					console.log(info);
				}
			});
		}

		function toggleSolved(id) {
			$.ajax({
				url: '/admin/messages',
				type: 'POST',
				dataType: 'json',
				data: { 'id' : id, 'work' : 'toggle'},
				success: function (info) {
					console.log(info);
					$("div#card"+id).toggleClass('border-left-danger border-left-success');
					$("button#toggle"+id).toggleClass('btn-success btn-danger');
				},
				error: function(info) {
					console.log(info);
				}
			});		
		}
	</script>
@endsection