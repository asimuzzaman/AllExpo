<!DOCTYPE html>
<html lang="en">
  <head>
    <title>@yield('title', app('NAME'))</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <link rel = "icon" href = "/images/aliexpo_icon.png" type = "image/x-icon">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="{{ URL::asset('css/open-iconic-bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('css/animate.css') }}">
    
    <link rel="stylesheet" href="{{ URL::asset('css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('css/owl.theme.default.min.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('css/magnific-popup.css') }}">

    <link rel="stylesheet" href="{{ URL::asset('css/aos.css') }}">

    <link rel="stylesheet" href="{{ URL::asset('css/ionicons.min.css') }}">

    <link rel="stylesheet" href="{{ URL::asset('css/bootstrap-datepicker.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('css/jquery.timepicker.css') }}">

    
    <link rel="stylesheet" href="{{ URL::asset('css/flaticon.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('css/icomoon.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('css/style.css') }}">

    @yield('style')
    
  </head>
  
  <body class="goto-here">
	<div class="py-1 bg-primary">
        <div class="container">
            <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
                <div class="col-lg-12 d-block">
                    <div class="row d-flex">
                        <div class="col-md pr-4 d-flex topper align-items-center">
                            <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                            <span class="text">+880 1716-147252</span>
                        </div>
                        <div class="col-md pr-4 d-flex topper align-items-center">
                            <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                            <span class="text">bismoy46@gmail.com</span>
                        </div>
                        <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                            <span class="text">Fastest delivery</span>
                        </div>
                    </div>
                </div>
            </div>
          </div>
    </div>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
          <a class="navbar-brand" href="/">{{ app('NAME') }}</a>
          @auth
            <a href="/admin">Go back to Admin</a>
          @endauth

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
          </button>

          <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item active"><a href="/" class="nav-link">Home</a></li>
              <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="/mango" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Products</a>
              
              <div class="dropdown-menu" aria-labelledby="dropdown04">
                <a class="dropdown-item" href="/mango">Mango</a>
                <a class="dropdown-item" href="/rice">Rice</a>
                @php $dropdowns = \App\otherProduct::select('name','view_id')->get();  @endphp

                @foreach($dropdowns as $item)
                    <a class="dropdown-item" href="/product/{{ $item->view_id }}">{{ $item->name }}</a>
                @endforeach

              </div>
            </li>
              <li class="nav-item"><a href="#" class="nav-link">About</a></li>
              <li class="nav-item"><a href="/payment" class="nav-link">Payment</a></li>
              <li class="nav-item"><a href="/contact" class="nav-link">Contact</a></li>
            </ul>
          </div>
        </div>
      </nav>
    <!-- END nav -->

    @yield('content')


    <footer class="ftco-footer ftco-section">
        <div class="container">
        <div class="row">
            <div class="mouse">
                        <a href="#" class="mouse-icon">
                            <div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
                        </a>
                    </div>
        </div>
        <div class="row mb-5">
            <div class="col-md">
            <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">{{ app('NAME') }}</h2>
                <p>An emerging export company offering competitive price in global market</p>
                <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                </ul>
            </div>
            </div>
            <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
                <h2 class="ftco-heading-2">Menu</h2>
                <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Shop</a></li>
                <li><a href="#" class="py-2 d-block">About</a></li>
                <!-- <li><a href="#" class="py-2 d-block">Journal</a></li> -->
                <li><a href="/contact.php" class="py-2 d-block">Contact Us</a></li>
                </ul>
            </div>
            </div>
            <div class="col-md-4">
                <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Help</h2>
                <div class="d-flex">
                    <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
                    <li><a href="/shipping" class="py-2 d-block">Shipping Information</a></li>
                    <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
                    <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
                    <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
                    </ul>
                    <ul class="list-unstyled">
                    <li><a href="#" class="py-2 d-block">FAQs</a></li>
                    <li><a href="/contact.php" class="py-2 d-block">Contact</a></li>
                    </ul>
                </div>
            </div>
            </div>
            <div class="col-md">
            <div class="ftco-footer-widget mb-4">
                <h2 class="ftco-heading-2">Have Questions?</h2>
                <div class="block-23 mb-3">
                    <ul>
                    <li><span class="icon icon-map-marker"></span><span class="text">4-6-H, Joynogor, Mirpur-13, Dhaka</span></li>
                    <li><a href="tel://+8801716147252"><span class="icon icon-phone"></span><span class="text">+880 1716-147252</span></a></li>
                    <li><a href="mailto://bismoy46@gmail.com"><span class="icon icon-envelope"></span><span class="text">bismoy46@gmail.com</span></a></li>
                    </ul>
                </div>
            </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">

            <p>Developed and maintained by <a href="http://www.github.com/asimuzzaman" target="_blank">Blackernel</a></p>
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        </p>
            </div>
        </div>
        </div>
    </footer>

            <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <script src="{{ URL::asset('js/jquery.min.js') }}"></script>
        <script src="{{ URL::asset('js/jquery-migrate-3.0.1.min.js') }}"></script>
        <script src="{{ URL::asset('js/popper.min.js') }}"></script>
        <script src="{{ URL::asset('js/bootstrap.min.js') }}"></script>
        <script src="{{ URL::asset('js/jquery.easing.1.3.js') }}"></script>
        <script src="{{ URL::asset('js/jquery.waypoints.min.js') }}"></script>
        <script src="{{ URL::asset('js/jquery.stellar.min.js') }}"></script>
        <script src="{{ URL::asset('js/owl.carousel.min.js') }}"></script>
        <script src="{{ URL::asset('js/jquery.magnific-popup.min.js') }}"></script>
        <script src="{{ URL::asset('js/aos.js') }}"></script>
        <script src="{{ URL::asset('js/jquery.animateNumber.min.js') }}"></script>
        <script src="{{ URL::asset('js/bootstrap-datepicker.js') }}"></script>
        <script src="{{ URL::asset('js/scrollax.min.js') }}"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="{{ URL::asset('js/google-map.js') }}"></script>
        <script src="{{ URL::asset('js/main.js') }}"></script>

@yield('script')

    </body>
</html>