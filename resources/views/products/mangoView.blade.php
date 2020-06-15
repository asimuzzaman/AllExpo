@extends('layout/generic')

@section('title', $title)

@section('style')
	<style>
		/* Styling only for this table */
		table, td {
			border: 1px solid black;
		}
		td {
			text-align: left;
			padding: 10px;
		}
		table {
			width: 100%;
		}
	</style>
@endsection

@section('content')

    <!-- <div class="hero-wrap hero-bread" style="background-image: url('/images/bg_1.jpg');"> -->
	<div class="hero-wrap hero-bread" style="background-color: green;">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="/">Home</a></span> <span class="mr-2"><a href="/mango">Product</a></span></p>
            <h1 class="mb-0 bread">{{ $data->name }}</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row">
    			
    			<div class="col-lg-6 mb-5 ftco-animate">
    				<a href="/uploads/{{ $data->image }}" class="image-popup"><img src="/uploads/thumbs/{{ $data->image }}" class="img-fluid" onerror="this.onerror=null; this.src='/images/mango_dummy.png'" alt="Mango"></a>
    			</div>
    			<div class="col-lg-6 product-details pl-md-5 ftco-animate">
    				<h3>{{ $data->name }}</h3>
    				<div class="rating d-flex">
							<p class="text-left mr-4">
								<a href="#" class="mr-2">5.0</a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
								<a href="#"><span class="ion-ios-star-outline"></span></a>
							</p>
							<p class="text-left mr-4">
								<a href="#" class="mr-2" style="color: #000;">100 <span style="color: #bbb;">Rating</span></a>
							</p>
							<p class="text-left">
								<a href="#" class="mr-2" style="color: #000;">500 <span style="color: #bbb;">Sold</span></a>
							</p>
						</div>

					<p class="price"><span><a href="/shipping">Call for price</a></span></p>
    				<p>{{ $data->description }}</p>
						<div class="row mt-4">
							<div class="col-md-6">
								<div class="form-group d-flex">
		              <div class="select-wrap">
	                  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
	                  <select name="" id="" class="form-control">
	                  	<option value="">Small</option>
	                    <option value="">Medium</option>
	                    <option value="">Large</option>
	                    <option value="">Extra Large</option>
	                  </select>
	                </div>
		            </div>
							</div>
							<div class="w-100"></div>
							<div class="input-group col-md-6 d-flex mb-3">
	             	<span class="input-group-btn mr-2">
	                	<button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
	                   <i class="ion-ios-remove"></i>
	                	</button>
	            		</span>
	             	<input type="text" id="quantity" name="quantity" class="form-control input-number" value="1" min="1" max="100">
	             	<span class="input-group-btn ml-2">
	                	<button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
	                     <i class="ion-ios-add"></i>
	                 </button>
	             	</span>
	          	</div>
	          	<div class="w-100"></div>
	          	<div class="col-md-12">

				  @if($data->in_stock == 1)
	          		<p style="color: #000;">In stock</p>
				  @else
					<p style="color: red;">Out of stock</p>
				  @endif

	          	</div>
          	</div>
			  <p><a href="/shipping" class="btn btn-black py-3 px-5">Order now</a></p>
			  <div class="sidebar-box ftco-animate">
            	<h3 class="heading">About {{ $data->name }}</h3>

				<table class="table-striped">
					<tbody>
						<tr>
							<td>Origin</td>
							<td>{{ $data->origin }}</td>
						</tr>
						<tr>
							<td>Color</td>
							<td>{{ $data->color }}</td>
						</tr>
						<tr>
							<td>Average weight</td>
							<td>{{ $data->avg_weight }} grams</td>
						</tr>
						<tr>
							<td>Cultivation type</td>
							<td>{{ $data->cultivation_type }}</td>
						</tr>
						<tr>
							<td>Variety</td>
							<td>{{ $data->variety }}</td>
						</tr>
						<tr>
							<td>Grade</td>
							<td>{{ $data->grade }}</td>
						</tr>
						<tr>
							<td>Size</td>
							<td>{{ $data->size }}</td>
						</tr>
						<tr>
							<td>Style</td>
							<td>{{ $data->style }}</td>
						</tr>
						<tr>
							<td>Ripening</td>
							<td>{{ $data->ripening }}</td>
						</tr>
						<tr>
							<td>Type</td>
							<td>{{ $data->type }}</td>
						</tr>
						<tr>
							<td>Minimum order</td>
							<td>{{ $data->min_order }} Kilograms (KG)</td>
						</tr>
					</tbody>
				</table>
			</div>
			  
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section">
    	<div class="container">
				<div class="row justify-content-center mb-3 pb-3">
          <div class="col-md-12 heading-section text-center ftco-animate">
          	<span class="subheading">Products</span>
            <h2 class="mb-4">Related Products</h2>
            <p>Explore catalogue of our fresh mangoes here.</p>
          </div>
        </div>   		
    	</div>
	<div class="container">
    	<div class="row">
<?php
	$related = \App\Mango::where('id','<>',$data->id)->inRandomOrder()->limit(4)->get();
?>
	@foreach($related as $relate)

    			<div class="col-md-6 col-lg-3 ftco-animate">
    				<div class="product">
    					<a href="/mango/{{ $relate->id}}" class="img-prod"><img class="img-fluid" src="/uploads/thumbs/{{ $relate->image }}" onerror="this.onerror=null; this.src='/images/mango_dummy.png'" alt="{{ $relate->name }}">
    						<!-- <span class="status">30%</span>
    						<div class="overlay"></div> -->
    					</a>
    					<div class="text py-3 pb-4 px-3 text-center">
    						<h3><a href="#">{{ $relate->name }}</a></h3>
    						<div class="d-flex">
    							<div class="pricing">
		    						<p class="price">Call for price</p>
		    					</div>
	    					</div>
	    					<div class="bottom-area d-flex px-3">
	    						<div class="m-auto d-flex">
	    							<a href="#" class="add-to-cart d-flex justify-content-center align-items-center text-center">
	    								<span><i class="ion-ios-menu"></i></span>
	    							</a>
	    							<a href="#" class="buy-now d-flex justify-content-center align-items-center mx-1">
	    								<span><i class="ion-ios-cart"></i></span>
	    							</a>
    							</div>
    						</div>
    					</div>
    				</div>
				</div>
	@endforeach
    		</div>
    	</div>
    </section>

		<section class="ftco-section ftco-no-pt ftco-no-pb py-5 bg-light">
      <div class="container py-4">
        <div class="row d-flex justify-content-center py-5">
          <div class="col-md-6">
          	<h2 style="font-size: 22px;" class="mb-0">Subcribe to our Newsletter</h2>
          	<span>Get e-mail updates about our latest shops and special offers</span>
          </div>
          <div class="col-md-6 d-flex align-items-center">
            <form action="#" class="subscribe-form">
              <div class="form-group d-flex">
                <input type="text" class="form-control" placeholder="Enter email address">
                <input type="submit" value="Subscribe" class="submit px-3">
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

@endsection