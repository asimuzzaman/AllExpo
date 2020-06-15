@extends('layout/generic')

@section('title', $title)

@section('content')

    <!-- <div class="hero-wrap hero-bread" style="background-image: url('images/aliexpo1.jpg');"> -->
      <div class="hero-wrap hero-bread" style="background-color: rgb(0, 119, 179);">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="/">Home</a></span> <span>Shipping</span></p>
            <h1 class="mb-0 bread">How to Order</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section contact-section bg-light">
      <div class="container">
      	<div class="row d-flex mb-5 contact-info">
          <div class="w-100"></div>
          <h4>Before you place order, please consider following necessary steps:</h4>
          <ol>
            <li>Choose the item you want to purchase. Please consider the minimum order quantity.</li>
            <li>Call via Phone, WhatsApp or send Email to our head office. <a href="/contact">Click here</a> for contact details.</li>
            <li>Our sales team will discuss about the price and other details of your order.</li>
            <li>After finalizing the order details, our export department will send the product to you as soon as possible.</li>
          </ol>
        </div>
        <h5>Thank You for visiting {{ app('NAME') }}</h5>
      </div>
    </section>

@endsection