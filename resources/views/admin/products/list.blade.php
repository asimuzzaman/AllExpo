@extends('layout.dash')

@section('title', $title)

@section('content')
          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Product List</h1>
          <p class="mb-4">In this page {{ app('NAME') }} admins can list all products, edit or delete specific products</p>

          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">{{ $title }}</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Name</th>
                      <th>Price (BDT)</th>
                      <th>Stock</th>
                      <th>Added on</th>
                      <th>Edited by</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Name</th>
                      <th>Price (BDT)</th>
                      <th>Stock</th>
                      <th>Added on</th>
                      <th>Edited by</th>
                      <th>Actions</th>
                    </tr>
                  </tfoot>
                  <tbody>
                  	@foreach($data as $single)
                    <tr id="{{ $single->id }}">
                      <td>
                        @if($type == 'mango')
                          <a href="/mango/{{ $single->id }}">{{ $single->name }}</a>
                        @elseif($type == 'rice')
                          <a href="/rice/{{ $single->id }}">{{ $single->name }}</a>
                        @else
                          <a href="/product/{{ $single->view_id }}">{{ $single->name }}</a>
                        @endif
                      </td>
                      <td>{{ $single->price }}</td>
                      <td>
                      	@if($single->in_stock)
	                      	{{ 'Available'}}
	                      @else
	                      	{{ "Out of stock" }}
	                      @endif
                      </td>
                      <td>{{ $single->created_at }}</td>
                      <td>{{ (\App\User::select('lastName')->where('id', $single->user_id)->first())->lastName }}</td>
                      <td>
                     	  <a href="/admin/{{ $type."/".$single->id }}/edit" target="_blank" class="btn btn-primary btn-icon-split btn-sm">
                          <span class="icon text-white-50">
                            <i class="fas fa-info-circle"></i>
                          </span>
                          <span class="text">Edit</span>
                        </a>
                      	<button id="{{ $single->id }}" class="btn btn-danger btn-circle btn-sm delete">
                      		<i class="fas fa-trash"></i>
                      	</button>
                      </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
            </div>
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

			$("button.delete").on("click", function() {
				//SWEETALERT implementation
	       swal({
					title: "Are you sure?",
					text: "Once deleted, the product can't be recovered.",
					icon: "warning",
					buttons: true,
					dangerMode: true,
	            })
	            .then((willDelete) => {
	            	if (willDelete) {
		                $.ajax({
		                    url : '/admin/delete',
		                    type : 'GET',
		                    data:{'id':this.id, 'type': '{{ $type }}'},
		                    success:function(data){
		                        $("tr#"+ data['id']).fadeOut();
		                        // console.log("Image " + id + " deleted from DOM.");

		                        swal("The item has been deleted", {
		                          icon: "success",
		                        });
		                    },
		                    error: function (request, error) {
		                        console.log(arguments);
		                    }
		                });

	            		console.log("Delete " + this.id + "{{ $type }}");
	            	}
	            });
			});
		});
	</script>
@endsection