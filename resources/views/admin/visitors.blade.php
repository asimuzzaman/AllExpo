@extends('layout.dash')

@section('title', $title)

@section('style')
				<!-- Custom styles for this page -->
				<link href="{{ URL::asset('vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
@endsection

@section('content')
										<!-- Page Heading -->
										<h1 class="h3 mb-2 text-gray-800">GEO TRACKER</h1>
										<p class="mb-4">In this page {{ app('NAME') }} admins can see details about visitors for the customer's end of this site.</p>

										<div class="mb-2">
												<button class="btn btn-success btn-icon-split" id="update">
														<span class="icon text-white-50">
																<i class="fas fa-check"></i>
														</span>
														<span class="text">Update Data</span>
												</button>
												<button class="btn btn-danger btn-icon-split" id="delete">
														<span class="icon text-white-50">
																<i class="fas fa-trash"></i>
														</span>
														<span class="text">Delete Data</span>
												</button>     
										</div>

										<div class="card shadow mb-4">
												{{-- <div class="card-header py-3">
														<h6 class="m-0 font-weight-bold text-primary">{{ $title }}</h6>
												</div> --}}
												<div class="card-body">
														<div class="table-responsive">
																<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
																		<thead>
																				<tr>
																						<th>IP</th>
																						<th>Continent</th>
																						<th>Country</th>
																						<th>Last visited (GMT+6)</th>
																						<th>Organization</th>
																						<th>ISP</th>
																						<th>Languages</th>
																						<th>Currency</th>
																						<th>Timezone</th>
																				</tr>
																		</thead>
																		<tfoot>
																				<tr>
																						<th>IP</th>
																						<th>Continent</th>
																						<th>Country</th>
																						<th>Last visited (GMT+6)</th>
																						<th>Organization</th>
																						<th>ISP</th>
																						<th>Languages</th>
																						<th>Currency</th>
																						<th>Timezone</th>
																				</tr>
																		</tfoot>
																		<tbody>
																				@foreach($data as $single)
																						<tr>
																								<td>{{ $single->addr }}</td>
																								<td>{{ $single->continent }}</td>
																								<td>{{ $single->country }}</td>
																								<td>@php echo date("h:i:sa, d-m-Y", $single->last_login)  @endphp</td>
																								<td>{{ $single->org }}</td>
																								<td>{{ $single->isp }}</td>
																								<td>{{ $single->lang }}</td>
																								<td>{{ $single->currency }}</td>
																								<td>{{ $single->timezone }}</td>
																						</tr>
																				@endforeach
																		</tbody>
																</table>
														</div>
												</div>
										</div>

@endsection

@section('script')
		<!-- Page level plugins -->
		<script src="{{ URL::asset('vendor/datatables/jquery.dataTables.min.js') }}"></script>
		<script src="{{ URL::asset('vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>

		<!-- Page level custom scripts -->
		<script src="{{ URL::asset('js/demo/datatables-demo.js') }}"></script>

		<script type="text/javascript">
				$(document).ready(function() {
					$.ajaxSetup({
							headers: {
									'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
							}
					});


					//Initializing DataTable with custom sorting here
					$('#dataTable').DataTable({
						'order' : []
					});

					//deletes all data from Geo tracker table
					$('#delete').on('click', function() {
							swal({
									title: "Are you sure?",
									text: "Once deleted, the data can't be recovered.",
									icon: "warning",
									buttons: true,
									dangerMode: true,
							}).then((willDelete) => {
								if (willDelete) {
									$.ajax({
											url : '/admin/visitors',
											type : 'POST',
											data:{'task':'delete'},
											success:function(data){
												location.reload(true);
												console.log(data);
											},
											error: function (request, error) {
												console.log(arguments);
											}
									});
								}
							})
					});

					//updates data from Geolocation API and refreshes the page
					$('#update').on('click', function() {
						$.ajax({
								url : '/admin/visitors',
								type : 'POST',
								data:{'task':'update'},
								success:function(data){
									if(data['message'] == 'updated')
										location.reload(true); //reload as the DB has been updated
								},
								error: function (request, error) {
									console.log(arguments);
								}
						});
					});

				});
		</script>
@endsection