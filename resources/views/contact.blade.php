@extends('layout/generic')

@section('title', $title)

@section('content')

    <!-- <div class="hero-wrap hero-bread" style="background-image: url('images/aliexpo1.jpg');"> -->
      <div class="hero-wrap hero-bread" style="background-color: rgb(0, 153, 153);">
      <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
          	<p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home</a></span> <span>Contact us</span></p>
            <h1 class="mb-0 bread">Contact us</h1>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section contact-section bg-light">
      <div class="container">

        <div class="text-center d-sm-flex align-items-center justify-content-between mb-4">
          <button class="btn btn-sm btn-primary" data-toggle="modal" data-target="#messageModal">Send Message</button>
        </div>

      	<div class="row d-flex mb-5 contact-info">
          <div class="w-100"></div>
          <div class="col-md-3 d-flex">
          	<div class="info bg-white p-4">
	            <p><span>Head Office:</span><br> 4-6-H, Joynogor, Mirpur-13, Dhaka</p>
	          </div>
          </div>
          <div class="col-md-3 d-flex">
          	<div class="info bg-white p-4">
	            <p><span>Phone:</span> <a href="tel:+8801716147252">+880 1716-147252</a></p>
	          </div>
          </div>
          <div class="col-md-3 d-flex">
          	<div class="info bg-white p-4">
	            <p><span>Email:</span> <a href="mailto:bismoy46@gmail.com">bismoy46@gmail.com</a></p>
	          </div>
          </div>
          <div class="col-md-3 d-flex">
          	<div class="info bg-white p-4">
	            <p><span>WhatsApp:</span> <a href="#">+60 11-1124 4859</a></p>
	          </div>
          </div>
        </div>

        <div class="row d-flex mb-5 contact-info">
          <div class="w-100"></div>
          <div class="col-md-3 d-flex">
          	<div class="info bg-white p-4">
	            <p><span>Branch Office:</span><br> Holding No.115, Choikapara, Namosankarbati, Chapainawabganj 6300</p>
	          </div>
          </div>
          <div class="col-md-3 d-flex">
          	<div class="info bg-white p-4">
              <p><span>Malaysia agent:</span><br> Khaled Jameel Abueida<br>
                <a href="tel:+601128128800">+60 11-2812 8800</a>
                <a href="mailto://khaledabueida36@gmail.com">khaledabueida36@gmail.com</a><br>
                Kuala lumpur, Malaysia</p>
	          </div>
          </div>
          <div class="col-md-3 d-flex">
          	<div class="info bg-white p-4">
              <p><span>Turkey agent:</span><br> Khaled Magde Alreqeb<br>
                <a href="tel:+905524511128">+905524511128</a>
                <a href="mailto://khaled012618@gmail.com">khaled012618@gmail.com</a><br>
                Istanbul, Turkey</p>
	          </div>
          </div>
          <div class="col-md-3 d-flex">
          	<div class="info bg-white p-4">
              <p><span>US agent:</span><br>Mohammad Abdullah<br>
                <a href="mailto://abdullah510870@yahoo.com">abdullah510870@yahoo.com</a><br>
                United States</p>
	          </div>
          </div>
        </div>

      	<div class="row d-flex mb-5 contact-info">
          <div class="w-100"></div>
          <div class="col-md-3 d-flex">
          	<div class="info bg-white p-4">
              <p><span>Saudi Arabia agent:</span><br> Khaled Alafif<br>
                <a href="tel:+966556919476">+966556919476</a><br>
                Saudi Arab</p>
	          </div>
          </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Send Message</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form id="messageForm" action="">
                  <div class="form-group">
                    <input type="text" name="name" placeholder="Your Name" class="form-control" required>
                  </div>
                  <div class="form-group">
                    <input type="email" name="email" placeholder="Your email address" class="form-control" required>
                  </div>
                  <div class="form-group">
                    <textarea name="message" class="form-control" placeholder="Your message here..."></textarea>
                  </div>
                </form>
                <div id="messageContent"></div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" form="messageForm" class="btn btn-primary">Send</button>
              </div>
            </div>
          </div>
        </div>
        
        <!-- <div class="row block-9">
          <div class="col-md-6 order-md-last d-flex">
            <form action="#" class="bg-white p-5 contact-form">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Name">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Your Email">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Subject">
              </div>
              <div class="form-group">
                <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          
          </div>

          <div class="col-md-6 d-flex">
          	<div id="map" class="bg-white"></div>
          </div>
        </div> -->
      </div>
    </section>

@endsection

@section('script')
  <script type="text/javascript">
    $(document).ready(function() {
      $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });

      $('#messageForm').submit(function(event) {
        event.preventDefault();

        var formData = {
            'name' : $('input[name=name]').val(),
            'email' : $('input[name=email]').val(),
            'message' : $('textarea[name=message]').val()
        };

        $.ajax({
          url: '/contact',
          type: 'POST',
          data: formData,
          dataType: 'json',
          encode: true,
          success: function(data) {
            $("#messageContent").empty();
            $('#messageForm')[0].reset();
            
            var info = "Your message has been sent successfully! ";
            info += "Message token is <strong>"+data['token']+"</strong>. Save it for future reference. ";
            info += "Our support team will contact with you soon. Thank You.";
            
            $("#messageContent").html(info);
          },
          error: function() {

          }
        });
        //console.log(formData);
      });
    });
  </script>
@endsection