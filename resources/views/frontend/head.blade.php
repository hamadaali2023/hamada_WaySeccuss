
 <!DOCTYPE html>
  <html lang="en">
  
  <head>
    <!-- Meta tag -->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="description" content="Company Website">
    <meta name="keywords" content="Web Development, Graphic Design, App Programming">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <!-- Title Tag -->
    <title>Company Title</title>
  
    <!-- Favicon -->
    <link rel="icon" type="{{asset('account/NewDesign/image/png')}}" href="img/favicon.png">
  
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,700,800" rel="stylesheet">
  
    <!-- Bootstrap Css -->
    <link rel="stylesheet" href="{{asset('account/NewDesign/css/bootstrap.min.css')}}">
  
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="{{asset('account/NewDesign/css/font-awesome.min.css')}}">
  
    <!-- Slick Nav CSS -->
    <link rel="stylesheet" href="{{asset('account/NewDesign/css/slicknav.min.css')}}">
  
    <!-- Cube Portfolio CSS -->
    <link rel="stylesheet" href="{{asset('account/NewDesign/css/cubeportfolio.min.css')}}">
  
    <!-- Fancy Box CSS -->
    <link rel="stylesheet" href="{{asset('account/NewDesign/css/jquery.fancybox.min.css')}}">
  
    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="{{asset('account/NewDesign/css/owl.theme.default.css')}}">
    <link rel="stylesheet" href="{{asset('account/NewDesign/css/owl.carousel.min.css')}}">
  
    <!-- Slick Slider CSS -->
    <link rel="stylesheet" href="{{asset('account/NewDesign/css/slickslider.min.css')}}">
  
    <!-- Animate CSS -->
    <link rel="stylesheet" href="{{asset('account/NewDesign/css/animate.min.css')}}">
  
    <!-- Main CSS -->
    <link rel="stylesheet" href="{{asset('account/NewDesign/css/style.css')}}">
  
  </head>
  
  <body>
  
    <!--===== Start Preloader =====-->
    <!-- <div class="preloader">
      <div class="preloader-inner">
        <div class="single-loader one"></div>
        <div class="single-loader two"></div>
        <div class="single-loader three"></div>
        <div class="single-loader four"></div>
        <div class="single-loader five"></div>
        <div class="single-loader six"></div>
        <div class="single-loader seven"></div>
        <div class="single-loader eight"></div>
        <div class="single-loader nine"></div>
      </div>
    </div> -->
    <!--===== /End Preloader =====-->
  
  
    <!--===== Start Header =====-->
    <header id="header" class="header">
  
      <!-- Topbar -->
      <div class="topbar">
        <div class="container">
          <div class="row">
            <div class="col-lg-6 col-md-9 col-12">
              <!-- Contact -->
              <ul class="contact">
                <li><i class="fa fa-phone"></i> {{ $contact->phone }}</li>
                <li><i class="fa fa-envelope"></i> <a href="mailto:">{{ $contact->mail }}</a></li>
                <li><i class="fa fa-clock-o"></i>{{ $contact->calendar }}</li>
              </ul>
              <!--/ End Contact -->
            </div>
            <div class="col-lg-6 col-md-3 col-12">
              <div class="topbar-right">
  
                <!-- Social -->
                <ul class="social">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  {{-- <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                  <li><a href="#"><i class="fa fa-behance"></i></a></li> --}}
                  <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                </ul>
                <!--/ End Social -->
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--/ End Topbar -->
  
      <!-- Middle Bar -->
      <div class="middle-bar">
        <div class="container">
          <div class="row">
            <div class="col-lg-2 col-md-2 col-12">
              <!-- Logo -->
              <img src="{{asset('account/NewDesign/img/logo.png')}}" class="img-fluid LogoImg" alt="Company Logo">
              <!--/ End Logo -->
              <button class="mobile-arrow"><i class="fa fa-bars"></i></button>
              <div class="mobile-menu"></div>
            </div>
            <div class="col-lg-10 col-md-10 col-12">
              <!-- Main Menu -->
              <div class="mainmenu">
                <nav class="navigation">
                  <ul class="nav menu">
                    <li class="active"><a href="index.html">Home</a></li>
                    <li><a>Our Company<i class="fa fa-caret-down"></i></a>
                      <ul class="dropdown">
                        <li><a href="#about" class="animation-scroll">About</a></li>
                        <li><a href="#why-choose" class="animation-scroll">Why Choose Us</a></li>
                        <li><a href="#team" class="animation-scroll">Team</a></li>
                        <li><a href="#testimonials" class="animation-scroll">Clients</a></li>
                        <li><a href="#partners" class="animation-scroll">Partners</a></li>
                      </ul>
                    </li>
  
                    <li><a href="#services" class="animation-scroll">Services</a></li>
                    <li><a href="#facts-section" class="animation-scroll">Achievements</a></li>
                    <li><a href="#portfolio" class="animation-scroll">Portfolio</a></li>
                    <li><a href="#pricing-plan" class="animation-scroll">Pricing</a></li>
                    <li><a href="#contact-us" class="animation-scroll">Contact</a></li>
                  </ul>
                </nav>
                <!-- Button -->
                <div class="button">
                  <a href="#contact-us" class="btn animation-scroll">Get a quote</a>
                </div>
                <!--/ End Button -->
              </div>
              <!--/ End Main Menu -->
            </div>
          </div>
        </div>
      </div>
      <!--/ End Middle Bar -->
  
    </header>
    <!--===== /End Header =====-->