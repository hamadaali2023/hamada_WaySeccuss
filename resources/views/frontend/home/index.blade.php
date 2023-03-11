@extends('frontend/homepage')

@section('frontpage')

	<!--===== Start Banner Section =====-->
	<section id="banner-section" class="banner-section">
		<!-- Slider -->
		<div class="slider-area">
      @foreach ($sliders as $slider)
          <!-- First Slider -->
        <div class="single-slider" style="background-image:url(''.$slider->background.'')">
          <div class="container">
            <div class="row">
              <div class="col-lg-7 col-md-6 col-12">
                <!-- Slider Text -->
                <div class="slider-text">
                  <h2>{{ $slider->title1 }}</h2>
                  <p>{{ $slider->title2 }} </p>
                  <div class="button">
                    <a href="#portfolio" class="btn animation-scroll">Our Portfolio</a>
                    <a href="#contact-us" class="btn btn2 animation-scroll">Contact Us</a>
                  </div>
                </div>
                <!--/ End Slider Text -->
              </div>
              <div class="col-lg-5 col-md-6 col-12">
                <!-- Image Gallery -->
                <div class="image-gallery">
                  <div class="single-image">
                    <img src="{{asset(''.$slider->image.'')}}" alt="Slider1 Image1">
                  </div>
                  <div class="single-image two">
                    <img src="{{asset(''.$slider->image2.'')}}" alt="Slider1 Image2">
                  </div>
                </div>
                <!--/ End Image Gallery -->
              </div>
            </div>
          </div>
        </div>
        <!--/ End First Slider -->
          
      @endforeach
	


		

		</div>
		<!--/ End Slider -->
	</section>
	<!--===== /End Banner Section =====-->

	<!--===== About Us =====-->
	<section id="about" class="about-us section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title wow fadeInUp">
						<span class="title-bg">Company</span>
						<h2>About Company</h2>
						<p>{{ $description->title }}</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-12 wow fadeInLeft" data-wow-delay="0.6s">
					<!-- About Image -->
					<img src="{{asset(''.$description->image.'')}}" class="img-thumbnail" alt="About Us">
					<!--/ End About Image -->
				</div>

				<div class="col-lg-6 col-12 wow fadeInRight" data-wow-delay="0.8s">
					<!-- About Content -->
					<div class="about-content">
						<h2>{{ $description->headline }}</h2>
						<p>{{ $description->description }}</p>
						<a href="#contact-us" class="btn primary animation-scroll">Get a quote</a>
					</div>
					<!--/ End About Content -->
				</div>
			</div>
		</div>
	</section>
	<!--======/ End About Us =====-->

	<!--===== Services =====-->
	<section id="services" class="services archives section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<span class="title-bg">Services</span>
						<h2>What we provide</h2>
						<p>Sed lorem enim, faucibus at erat eget, laoreet tincidunt tortor. Ut sed mi nec ligula
							bibendum aliquam. Sed scelerisque maximus magna, a vehicula turpis Proin</p>
						<p>
						</p>
					</div>
				</div>
			</div>
			<div class="row">
        @foreach ($menu_ourwork as $item)
        <div class="col-lg-4 col-md-6 col-12">
					<!-- First Service -->
					<div class="single-service">
						<i class="{{ $item->image }}"></i>
						<h2><a href="#">{{ $item->title }}</a></h2>
						<p>{{ $item->description }}</p>
					</div>
					<!-- End First Service -->
				</div>
        @endforeach
				
				
			</div>
		</div>
	</section>
	<!--=====/ End Services =====-->

	<!-- =====  Facts Section  =====-->
	<section id="facts-section" class="facts-section section">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-12 wow fadeInLeft" data-wow-delay="0.5s">
					<div class="text-content">
						<div class="section-title">
							<h2><span class="pb-2">Our achievements</span>We always Work for You!</h2>
							<p>Lorem Ipsum is simply dummy text of the printing and type setting industry when an
								unknown printer took a galley of type and scrambled it to make.

							</p>
							<a href="#contact-us" class="btn primary animation-scroll desktop">Contact Us</a>
						</div>
					</div>
				</div>
				<div class="col-lg-7 col-12">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-6 wow fadeIn" data-wow-delay="0.6s">
							<!-- First Fact -->
							<div class="single-fact">
								<div class="icon"><i class="fa fa-line-chart"></i></div>
								<div class="counter">
									<p><span class="count">5</span></p>
									<h4>years of success</h4>
								</div>
							</div>
							<!--/ End Frst Fact -->
						</div>
						<div class="col-lg-6 col-md-6 col-6 wow fadeIn" data-wow-delay="0.8s">
							<!-- Second Fact -->
							<div class="single-fact">
								<div class="icon"><i class="fa fa-code"></i></div>
								<div class="counter">
									<p><span class="count">28</span></p>
									<h4>Project Complete</h4>
								</div>
							</div>
							<!--/ End Second Fact -->
						</div>
						<div class="col-lg-6 col-md-6 col-6 wow fadeIn" data-wow-delay="1s">
							<!-- Third Fact -->
							<div class="single-fact">
								<div class="icon"><i class="fa fa-users"></i></div>
								<div class="counter">
									<p><span class="count">25</span></p>
									<h4>Happy Clients</h4>
								</div>
							</div>
							<!--/ End Third Fact -->
						</div>

						<div class="col-lg-6 col-md-6 col-6 wow fadeIn" data-wow-delay="1s">
							<!-- Fourth Fact -->
							<div class="single-fact">
								<div class="icon"><i class="fa fa-lightbulb-o"></i></div>
								<div class="counter">
									<p><span class="count">30</span></p>
									<h4>Creative Idea</h4>
								</div>
							</div>
							<!--/ End Fourth Fact -->
						</div>

						<div class="col-6 text-center offset-3 mt-5 wow fadeIn" data-wow-delay="1s">
						<a href="#contact-us" class="btn primary animation-scroll mob">Contact Us</a>
					</div>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- =====/ End Fun Facts  =====-->

	<!--===== Why Choose Us =====-->
	<section id="why-choose" class="why-choose section">
		<div class="container-fluid fix">
			<div class="row fix">
				<div class="col-lg-6 col-md-6 col-12 fix">
					<div class="why-div">
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12 fix">
					<!-- Choose Main -->
					<div class="choose-main">
						<div class="working-process">
							<h2>Why Choose Us?</h2>
							<p>Lorem Ipsum is simply dummy text of the printing and type setting industry when an
								unknown printer took a galley of type and scrambled it to make.
							</p>
						</div>
						<div class="single-choose wow fadeInRight" data-wow-delay="0.2s">
							<span class="number">01</span>
							<h4><span>Planing</span>for every new project.</h4>
						</div>
						<div class="single-choose wow fadeInRight" data-wow-delay="0.4s">
							<span class="number">03</span>
							<h4><span>We Have</span>strong & creative team members.</h4>
						</div>
						<div class="single-choose wow fadeInRight" data-wow-delay="0.6s">
							<span class="number">04</span>
							<h4><span>24/7 Dedicated</span>Support system.</h4>
						</div>
						<div class="single-choose wow fadeInRight" data-wow-delay="0.8s">
							<span class="number">02</span>
							<h4><span>We Build</span>Perfect website theme.</h4>
						</div>
					</div>
					<!--/ End Choose Main -->
				</div>
			</div>
		</div>
	</section>
	<!--=====/ End Why Choose Us ======-->

	<!--===== Portfolio =====-->
	<section id="portfolio" class="portfolio section">
		<div class="container">
			<div class="row">
				<div class="col-12 wow fadeInUp">
					<div class="section-title">
						<span class="title-bg">Projects</span>
						<h2>Our Portfolio</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and type setting industry when an unknown
							printer took a galley of type and scrambled it to make. </p>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<!-- portfolio Nav -->
					<div class="portfolio-nav">
						<ul class="tr-list list-inline" id="portfolio-menu">
							<li data-filter="*" class="cbp-filter-item active">All Works<div class="cbp-filter-counter">
								</div>
							</li>
							@foreach ($menu_ourwork as $ourwork)
							<li data-filter=".{{ substr($ourwork->title,0,3) }}" class="cbp-filter-item">{{ $ourwork->title }}<div
								class="cbp-filter-counter"></div>
						    </li>
							@endforeach
							
						
						</ul>
					</div>
					<!--/ End portfolio Nav -->
				</div>
			</div>
			<div class="portfolio-inner">
				<div class="row">
					<div class="col-12">
						<div id="portfolio-item">
							@foreach ($projects as $project)
								
							<!-- Single portfolio -->
							<div class="cbp-item animation {{ substr($project->ourwork->title,0,3) }}">
								<div class="portfolio-single">
									<div class="portfolio-head">
										<img style="height: 330px;width:330px" src="{{asset(''.$project->image.'')}}" alt="Portfolio1" />
									</div>
									<div class="portfolio-hover">
										<h4><a href="{{ $project->url }}">{{ $project->title }}</a></h4>
										<p>{{ $project->description }}</p>
										<div class="button">
											<a class="primary" data-fancybox="gallery" href="{{asset(''.$project->image.'')}}"><i
													class="fa fa-search"></i></a>
										</div>
									</div>
								</div>
							</div>
							<!--/ End portfolio -->
							@endforeach

						
						
						</div>
					</div>
					<div class="col-12">
						<div class="button">
							<a class="btn primary" href="#">More Projects</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--=====/ End portfolio =====-->


	<!--===== Pricing =====-->
	<section id="pricing-plan" class="pricing-plan section">
		<div class="container">
			<div class="row">
				<div class="col-12 wow fadeInUp">
					<div class="section-title">
						<span class="title-bg">Pricing</span>
						<h2>Our Plan</h2>
						<p>Sed lorem enim, faucibus at erat eget, laoreet tincidunt tortor. Ut sed mi nec ligula
							bibendum aliquam. Sed scelerisque maximus magna, a vehicula turpis Proin<p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-12 wow fadeInUp" data-wow-delay="0.4s">
					<!-- Single Table -->
					<div class="single-table">
						<!-- Table Head -->
						<div class="table-head">
							<h2 class="title">Basic</h2>
							<div class="price">
								<p class="amount"><span class="currency">$</span>20<span>/month</span></p>
							</div>
						</div>
						<!--/ End Table Head -->
						<!-- Table List -->
						<ul class="table-list">
							<li>Limited Times Marketing</li>
							<li>5 Analytics Campaigns</li>
							<li>300 Keywords</li>
							<li>250,000 crawled Page</li>
							<li>Unlimited Updates</li>
							<li>+ Free Website Design</li>
						</ul>
						<!--/ End Table List -->
						<!-- Table Bottom -->
						<div class="table-bottom">
							<a class="btn" href="#">Start Now</a>
						</div>
						<!-- Table Bottom -->
					</div>
					<!-- End Single Table-->
				</div>
				<div class="col-lg-4 col-12 wow fadeInUp" data-wow-delay="0.6s">
					<!-- Single Table -->
					<div class="single-table active">
						<!-- Table Head -->
						<div class="table-head">
							<h2 class="title">Premium</h2>
							<div class="price">
								<p class="amount"><span class="currency">$</span>50<span>/month</span></p>
							</div>
						</div>
						<!--/ End Table Head -->
						<!-- Table List -->
						<ul class="table-list">
							<li>Limited Times Marketing</li>
							<li>20 Analytics Campaigns</li>
							<li>500 Keywords</li>
							<li>800,000 crawled Page</li>
							<li>Unlimited Updates</li>
							<li>+ Free Website Design</li>
						</ul>
						<!--/ End Table List -->
						<!-- Table Bottom -->
						<div class="table-bottom">
							<a class="btn" href="#">Start Now</a>
						</div>
						<!-- Table Bottom -->
					</div>
					<!-- End Single Table-->
				</div>
				<div class="col-lg-4 col-12 wow fadeInUp" data-wow-delay="0.8s">
					<!-- Single Table -->
					<div class="single-table">
						<!-- Table Head -->
						<div class="table-head">
							<h2 class="title">Advanced</h2>
							<div class="price">
								<p class="amount"><span class="currency">$</span>100<span>/month</span></p>
							</div>
						</div>
						<!--/ End Table Head -->
						<!-- Table List -->
						<ul class="table-list">
							<li>Unlimited Times Marketing</li>
							<li>5 Analytics Campaigns</li>
							<li>300 Keywords</li>
							<li>250,000 crawled Page</li>
							<li>Unlimited Updates</li>
							<li>+ Free Website Design</li>
						</ul>
						<!--/ End Table List -->
						<!-- Table Bottom -->
						<div class="table-bottom">
							<a class="btn" href="#">Start Now</a>
						</div>
						<!-- Table Bottom -->
					</div>
					<!-- End Single Table-->
				</div>
			</div>
		</div>
	</section>
	<!--=====/ End Pricing =====-->

	<!--===== Testimonials =====-->
	<section id="testimonials" class="testimonials section">
		<div class="container">
			<div class="col-12 wow fadeInUp">
				<div class="section-title">
					<span class="title-bg">Review</span>
					<h2>What Clients Says</h2>
					<p>Sed lorem enim, faucibus at erat eget, laoreet tincidunt tortor. Ut sed mi nec ligula bibendum
						aliquam. Sed scelerisque maximus magna, a vehicula turpis Proin<p>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8 offset-lg-2 col-12">
					<div class="testimonial-nav">
            @foreach ($Testimonil as $item)
            <div class="single-nav">
							<img src="{{asset(''.$item->image.'')}}" alt="Client1">
						</div>
                
            @endforeach
						
						
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-10 offset-lg-1 col-12">
					<div class="testimonial-content">
            @foreach ($Testimonil as $item)
            <div class="single-content">
							<p>{{ $item->description }} </p>
							<div class="testimonial-info">
								<h4>{{ $item->title }}<span>Web Development</span></h4>
							</div>
						</div>
                
            @endforeach
						
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--=====/ End Testimonials =====-->

	<!--===== Start Team =====-->
	<section id="team" class="team section">
		<div class="container">
			<div class="row">
				<div class="col-12 wow fadeInUp" data-wow-delay="0.2s">
					<div class="section-title">
						<span class="title-bg">Team</span>
						<h2>Our Team</h2>
						<p>Lorem Ipsum is simply dummy text of the printing and type setting industry when an unknown
							printer took a galley of type and scrambled it to make. </p>
					</div>
				</div>
			</div>
			<div class="row">
				@foreach ($teams as $team)
				<div class="col-lg-3 col-md-6 col-6 wow fadeInUp" data-wow-delay="0.6s" data-tilt>
					<!-- Single Team -->
					<div class="single-team">
						<!-- Team Head -->
						<div class="t-head">
							<img src="{{asset(''.$team->image.'')}}" alt="Team1">
							<div class="t-icon">
								<a href="#Member1_Modal" data-toggle="modal" data-target="#Member1_Modal"><i
										class="fa fa-plus"></i></a>
							</div>
						</div>
						<!-- Team Bottom -->
						<div class="t-bottom">
							<p>{{ $team->job_title }}</p>
							<h2>{{ $team->name }}</h2>
							<ul class="t-social">
								<li><a href="{{ $team->facebook}}"><i class="fa fa-facebook"></i></a></li>
								<li><a href="{{ $team->github}}"><i class="fa fa-github"></i></a></li>
								<li><a href="{{ $team->linkedIn}}"><i class="fa fa-linkedin"></i></a></li>
								{{-- <li><a href="#"><i class="fa fa-behance"></i></a></li> --}}
							</ul>
						</div>
						<!--/ End Team Bottom -->
					</div>
					<!-- End Single Team -->
				</div>
					
				@endforeach

				
				
			</div>
		</div>
	</section>
	<!--======/ End Team ======-->


	<!--===== Partners ======-->
	<section id="partners" class="partners section">
		<div class="container">
			<div class="row">
				<div class="col-12 wow fadeInUp">
					<div class="section-title">
						<span class="title-bg">Clients</span>
						<h2>Our Partners</h2>
						<p>Sed lorem enim, faucibus at erat eget, laoreet tincidunt tortor. Ut sed mi nec ligula
							bibendum aliquam. Sed scelerisque maximus magna, a vehicula turpis Proin<p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="partners-inner">
						<div class="row no-gutters">
							<!-- Single Partner -->
							<div class="col-md-3 col-6">
								<div class="single-partner">
									<a href="#" target="_blank"><img src="{{asset('account/NewDesign/img/parteners/partner-1.png')}}"
											alt="Partner1"></a>
								</div>
							</div>
							<!--/ End Single Partner -->
							<!-- Single Partner -->
							<div class="col-md-3 col-6">
								<div class="single-partner">
									<a href="#" target="_blank"><img src="{{asset('account/NewDesign/img/parteners/partner-2.png')}}"
											alt="Partner2"></a>
								</div>
							</div>
							<!--/ End Single Partner -->
							<!-- Single Partner -->
							<div class="col-md-3 col-6">
								<div class="single-partner">
									<a href="#" target="_blank"><img src="{{asset('account/NewDesign/img/parteners/partner-1.png')}}"
											alt="Partner3"></a>
								</div>
							</div>
							<!--/ End Single Partner -->
							<!-- Single Partner -->
							<div class="col-md-3 col-6">
								<div class="single-partner">
									<a href="#" target="_blank"><img src="{{asset('account/NewDesign/img/parteners/partner-2.png')}}"
											alt="Partner4"></a>
								</div>
							</div>
							<!--/ End Single Partner -->
							<!-- Single Partner -->
							<div class="col-md-3 col-6">
								<div class="single-partner">
									<a href="#" target="_blank"><img src="{{asset('account/NewDesign/img/parteners/partner-1.png')}}"
											alt="Partner5"></a>
								</div>
							</div>
							<!--/ End Single Partner -->
							<!-- Single Partner -->
							<div class="col-md-3 col-6">
								<div class="single-partner">
									<a href="#" target="_blank"><img src="{{asset('account/NewDesign/img/parteners/partner-2.png')}}"
											alt="Partner6"></a>
								</div>
							</div>
							<!--/ End Single Partner -->
							<!-- Single Partner -->
							<div class="col-md-3 col-6">
								<div class="single-partner">
									<a href="#" target="_blank"><img src="{{asset('account/NewDesign/img/parteners/partner-1.png')}}"
											alt="Partner7"></a>
								</div>
							</div>
							<!--/ End Single Partner -->
							<!-- Single Partner -->
							<div class="col-md-3 col-6">
								<div class="single-partner">
									<a href="#" target="_blank"><img src="{{asset('account/NewDesign/img/parteners/partner-2.png')}}"
											alt="Partner8"></a>
								</div>
							</div>
							<!--/ End Single Partner -->

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--=====/ End Partners =====-->

	<!--===== Start Contact =====-->
	<section id="contact-us" class="contact-us section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<span class="title-bg">Contact</span>
						<h2>Contact Us</h2>
						<p>Sed lorem enim, faucibus at erat eget, laoreet tincidunt tortor. Ut sed mi nec ligula
							bibendum aliquam. Sed scelerisque maximus magna, a vehicula turpis Proin
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="contact-main">
						<div class="row">
							<!-- Contact Form -->
							<div class="col-lg-8 col-12">
								<div class="form-main">
									<div class="text-content">
										<h2>Get a quote</h2>
									</div>
									<form class="form" method="post" action="{{ url('quate') }}">
										
										<input value="{{csrf_token()  }}" type="hidden" name="_token">
										<div class="row">
											<div class="col-lg-6 col-12">
												<div class="form-group">
													<input type="text" name="name" placeholder="Name" required>
												</div>
											</div>
											<div class="col-lg-6 col-12">
												<div class="form-group">
													<input type="email" name="email" placeholder="E-mail" required>
												</div>
											</div>

											<div class="col-lg-12 col-12">
												<div class="form-group">
													<input type="text" name="phone" placeholder="Phone No." required>
												</div>
											</div>

											<div class="col-lg-12 col-12">
												<div class="form-group">
													<textarea name="message" rows="6"
														placeholder="Message.."></textarea>
												</div>
											</div>
											<div class="col-lg-12 col-12">
												<div class="form-group button">
													<button type="submit" class="btn primary">Submit Message</button>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
							<!--/ End Contact Form -->
							<!-- Contact Address -->
							<div class="col-lg-4 col-12">
								<div class="contact-address">
									<!-- Address -->
									<div class="contact">
										<h2>Get in touch</h2>
										<ul class="address">
											<li><i class="fa fa-paper-plane"></i><span>Address: </span> {{ $contact->adress }}
											</li>
											<li><i class="fa fa-phone"></i><span>Phone: </span>{{ $contact->phone }}</li>
											<li class="email"><i class="fa fa-envelope"></i><span>Email: </span><a
													href="mailto:">{{ $contact->mail }}</a></li>
										</ul>
									</div>
									<!--/ End Address -->
									<!-- Social -->
									<ul class="social">
										<li><a href="#"><i class="fa fa-facebook"></i>Like Us facebook</a></li>
										<li><a href="#"><i class="fa fa-twitter"></i>Follow Us twitter</a></li>
										{{-- <li><a href="#"><i class="fa fa-google-plus"></i>Follow Us google-plus</a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i>Follow Us linkedin</a></li>
										<li><a href="#"><i class="fa fa-behance"></i>Follow Us behance</a></li> --}}
									</ul>
									<!--/ End Social -->
								</div>
							</div>
							<!--/ End Contact Address -->
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">

				</div>
			</div>
		</div>
	</section>
	<!--======/ End Contact ======-->

 @stop