<!-- Slider
    ============================================= -->
<section id="slider" class="slider-element min-vh-100 bgchanger include-header"
         style="background-color: {{ $products->first()->color ?? null}}; background-image: url('{{ Theme::asset()->url('homepage/assets/images/page/watch-bg.png') }}'); background-position: center center; background-size: cover;">
    <div class="slider-inner">
        <div class="vertical-middle slider-element-fade">
            <div class="container py-5">
                <div class="row align-items-center">
                    <div class="col-md-6 text-center text-md-start">
                        <div class="emphasis-title mb-0">
                            <span class="text-uppercase d-block text-black-50 product-name" style="letter-spacing:10px; font-size: 18px; color: {{ $products->first() ? $products->first()->name_color : null }} ">{{ $products->first()->name ?? null }}</span>
                            <h2 class="mt-2 fw-semibold font-secondary" style="font-size: 64px;color: {{ $products->first() ? $products->first()->description_color : 'E25B45' }}; line-height: 1.3; letter-spacing: -2px;">
                                <u class="product-description">{{ $products->first()->description ?? null }}</u>
                            </h2>
                            <h2 class="fw-bold mt-4 product-price" style="color: {{ $products->first() ? $products->first()->price_color : null }};">{{ number_format($products->first()->price ?? 0, 0, ',','.') }} ₫</h2>
{{--                            <a href="#" data-animate="fadeInUp" data-delay="600" class="button button-circle button-white button-light button-large text-white mt-4 nott ls0" style="background-color: #E25B45">View Details</a>--}}
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div id="oc-watch" class="owl-carousel carousel-widget"
                             data-margin="0"
                             data-nav="false"
                             data-pagi="true"
                             data-items="1"
                             data-autoplay="5000"
                             data-speed="1000"
                             data-loop="true">
                            @foreach($products as $product)
                                <img src="{{ RvMedia::getImageUrl($product->image) }}" alt="{{ $product->name }}" data-product='{{ $product }}'>
                            @endforeach
                        </div>

                        <div id="oc-watch-bg"
                             style="background: #E25B45; width: 360px; height: 360px; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); opacity: 1; border-radius: 50%;">
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <a href="#" data-scrollto="#section-about" data-easing="easeInOutExpo" data-speed="1250"
           data-offset="70" class="one-page-arrow">
            <div class="scroll-inner">
                <div class="scroll-wheel"></div>
            </div>
        </a>

    </div>
</section>
<!-- #slider end -->

<!-- Content -->
<section id="content">
    <div class="content-wrap py-0">
        <div id="section-about" class="center page-section">
            <div class="container clearfix">
                <h2 class="mx-auto bottommargin font-body" style="max-width: 700px; font-size: 40px;">
                    A digital web studio creating stunning &amp; engaging online experiences</h2>
                <p class="lead mx-auto bottommargin" style="max-width: 800px;">
                    Ford Foundation reduce child mortality fight against oppression refugee disruption pursue these aspirations effect.
                    Free-speech Nelson Mandela change liberal; challenges of our times sustainability
                    institutions.</p>
                <p class="bottommargin" style="font-size: 16px;">
                    <a href="#" data-scrollto="#section-services" data-easing="easeInOutExpo" data-speed="1250" data-offset="70" class="more-link">
                        Learn more
                        <i class="icon-angle-right"></i>
                    </a>
                </p>
                <div class="clear"></div>
                <div class="row topmargin-lg mx-auto" style="max-width: 1000px;">
                    <div class="col-md-4 mb-5">
                        <div class="team">
                            <div class="team-image">
                                <img src="{{ Theme::asset()->url('homepage/assets/images/team/1.jpg') }}" alt="John Doe">
                                <div class="bg-overlay">
                                    <div class="bg-overlay-content align-items-end" data-hover-animate="fadeIn" data-hover-speed="400">
                                        <a href="#" class="social-icon si-borderless si-small si-facebook" title="Facebook">
                                            <i class="icon-facebook"></i>
                                            <i class="icon-facebook"></i>
                                        </a>
                                        <a href="#" class="social-icon si-borderless si-small si-twitter" title="Twitter">
                                            <i class="icon-twitter"></i>
                                            <i class="icon-twitter"></i>
                                        </a>
                                        <a href="#" class="social-icon si-borderless si-small si-github" title="Github">
                                            <i class="icon-github"></i>
                                            <i class="icon-github"></i>
                                        </a>
                                    </div>
                                    <div class="bg-overlay-bg" data-hover-animate="fadeIn" data-hover-speed="400"></div>
                                </div>
                            </div>
                            <div class="team-desc team-desc-bg">
                                <div class="team-title">
                                    <h4>John Doe</h4><span>CEO</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <div class="team">
                            <div class="team-image">
                                <img src="{{ Theme::asset()->url('homepage/assets/images/team/2.jpg') }}" alt="Josh Clark">
                                <div class="bg-overlay">
                                    <div class="bg-overlay-content align-items-end" data-hover-animate="fadeIn"
                                         data-hover-speed="400">
                                        <a href="#" class="social-icon si-borderless si-small si-twitter"
                                           title="Twitter">
                                            <i class="icon-twitter"></i>
                                            <i class="icon-twitter"></i>
                                        </a>
                                        <a href="#" class="social-icon si-borderless si-small si-linkedin"
                                           title="LinkedIn">
                                            <i class="icon-linkedin"></i>
                                            <i class="icon-linkedin"></i>
                                        </a>
                                        <a href="#" class="social-icon si-borderless si-small si-flickr"
                                           title="Flickr">
                                            <i class="icon-flickr"></i>
                                            <i class="icon-flickr"></i>
                                        </a>
                                    </div>
                                    <div class="bg-overlay-bg" data-hover-animate="fadeIn" data-hover-speed="400"></div>
                                </div>
                            </div>
                            <div class="team-desc team-desc-bg">
                                <div class="team-title">
                                    <h4>Mary Jane</h4><span>Co-Founder</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 mb-5">
                        <div class="team">
                            <div class="team-image">
                                <img src="{{ Theme::asset()->url('homepage/assets/images/team/3.jpg') }}" alt="Mary Jane">
                                <div class="bg-overlay">
                                    <div class="bg-overlay-content align-items-end" data-hover-animate="fadeIn" data-hover-speed="400">
                                        <a href="#" class="social-icon si-borderless si-small si-twitter" title="Twitter">
                                            <i class="icon-twitter"></i>
                                            <i class="icon-twitter"></i>
                                        </a>
                                        <a href="#" class="social-icon si-borderless si-small si-vimeo" title="Vimeo">
                                            <i class="icon-vimeo"></i>
                                            <i class="icon-vimeo"></i>
                                        </a>
                                        <a href="#" class="social-icon si-borderless si-small si-instagram" title="Instagram">
                                            <i class="icon-instagram"></i>
                                            <i class="icon-instagram"></i>
                                        </a>
                                    </div>
                                    <div class="bg-overlay-bg" data-hover-animate="fadeIn" data-hover-speed="400"></div>
                                </div>
                            </div>
                            <div class="team-desc team-desc-bg">
                                <div class="team-title">
                                    <h4>Josh Clark</h4><span>Sales</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="section-works" class="page-section pt-0">
            <div class="section m-0">
                <div class="container clearfix">
                    <div class="mx-auto center" style="max-width: 900px;">
                        <h2 class="mb-0 fw-light ls1">Viết cái gì đó vào đây cho thật dài mô tả quá trình làm ra sản phẩm hoặc mục đích mục tiêu tạo ra sản phẩm chỗ này</h2>
                    </div>
                </div>
            </div>
            <div class="portfolio grid-container row g-0">
                @foreach($portfolios as $portfolio)
                <article class="portfolio-item col-lg-{{ $portfolio->is_wide ? 6 : 3 }} col-md-4 col-sm-6 col-12 {{ $portfolio->is_wide ? 'wide' : '' }}">
                    <div class="grid-inner">
                        <div class="portfolio-image">
                            <a href="#">
                                <img src="{{ RvMedia::getImageUrl($portfolio->image) }}" alt="{{ $portfolio->name }}">
                            </a>
                            <div class="bg-overlay">
                                <div class="bg-overlay-content flex-column" data-hover-animate="fadeIn">
                                    <div class="portfolio-desc p-0 center" data-hover-animate="fadeInDownSmall" data-hover-animate-out="fadeOutUpSmall" data-hover-speed="350">
                                        {!! $portfolio->content !!}
                                    </div>
                                </div>
                                <div class="bg-overlay-bg" data-hover-animate="fadeIn"></div>
                            </div>
                        </div>
                    </div>
                </article>
                @endforeach
            </div>
            <!-- #portfolio end -->
        </div>
        <div id="section-contact" class="page-section pt-0">
            <div class="row mx-0 bottommargin-lg align-items-stretch">
                <div class="col-lg-8 col-md-6 d-none d-md-block px-0">
                    <div class="gmap h-100" data-latitude="-37.813629" data-longitude="144.963058"
                         data-maptype="ROADMAP" data-zoom="14"
                         data-markers='[{ latitude:-37.813629, longitude:144.963058, html: "Melbourne, Australia", icon:{ image: "images/icons/map-icon-red.png", iconsize: [32, 32], iconanchor: [14,44] } }]'
                         data-styles='[{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"administrative","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"administrative.country","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"administrative.country","elementType":"geometry","stylers":[{"visibility":"simplified"}]},{"featureType":"administrative.country","elementType":"labels.text","stylers":[{"visibility":"simplified"}]},{"featureType":"administrative.province","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"administrative.locality","elementType":"all","stylers":[{"visibility":"simplified"},{"saturation":"-100"},{"lightness":"30"}]},{"featureType":"administrative.neighborhood","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"administrative.land_parcel","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"landscape","elementType":"all","stylers":[{"visibility":"simplified"},{"gamma":"0.00"},{"lightness":"74"}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"landscape.man_made","elementType":"all","stylers":[{"lightness":"3"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road","elementType":"geometry","stylers":[{"visibility":"simplified"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]'>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6" style="background-color: #F5F5F5;">
                    <div class="col-padding">
                        <h3 class="font-body fw-normal ls1">Địa chỉ</h3>
                        <div style="font-size: 16px; line-height: 1.7;">
                            <address style="line-height: 1.7;">
                                <strong>North America:</strong>
                                <br>
                                795 Folsom Ave, Suite 600
                                <br>
                                San Francisco, CA 94107
                                <br>
                            </address>
                            <div class="clear topmargin-sm"></div>
                            <address style="line-height: 1.7;">
                                <strong>Europe:</strong><br>
                                795 Folsom Ave, Suite 600<br>
                                San Francisco, CA 94107<br>
                            </address>
                            <div class="clear topmargin"></div>
                            <abbr title="Phone Number"><strong>Phone:</strong></abbr> (1) 8547 632521<br>
                            <abbr title="Fax"><strong>Fax:</strong></abbr> (1) 11 4752 1433<br>
                            <abbr title="Email Address"><strong>Email:</strong></abbr> info@canvas.com
                        </div>
                    </div>
                </div>
            </div>
            <div class="container clearfix">
                <div class="mx-auto topmargin" style="max-width: 850px;">
                    <div class="form-widget">
                        <div class="form-result"></div>
                        <form class="row mb-0" id="template-contactform" name="template-contactform" action="" method="post">
                            <div class="form-process">
                                <div class="css3-spinner">
                                    <div class="css3-spinner-scale-ripple">
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4">
                                <input type="text" id="template-contactform-name" name="template-contactform-name" value="" class="sm-form-control border-form-control required" placeholder="Name" />
                            </div>
                            <div class="col-md-6 mb-4">
                                <input type="email" id="template-contactform-email" name="template-contactform-email" value="" class="required email sm-form-control border-form-control" placeholder="Email Address" />
                            </div>
                            <div class="w-100"></div>
                            <div class="col-md-4 mb-4">
                                <input type="text" id="template-contactform-phone" name="template-contactform-phone" value="" class="sm-form-control border-form-control" placeholder="Phone" />
                            </div>
                            <div class="col-md-8 mb-4">
                                <input type="text" id="template-contactform-subject" name="subject" value="" class="required sm-form-control border-form-control" placeholder="Subject" />
                            </div>
                            <div class="w-100"></div>
                            <div class="col-12 mb-4">
                                <textarea class="required sm-form-control border-form-control" id="template-contactform-message" name="template-contactform-message" rows="7" cols="30" placeholder="Your Message"></textarea>
                            </div>
                            <div class="col-12 center mb-4">
                                <button class="button button-border button-circle fw-medium ms-0 topmargin-sm" type="submit" id="template-contactform-submit" name="template-contactform-submit" value="submit">Send Message</button>
                                <br>
                                <small style="display: block; font-size: 13px; margin-top: 15px;">
                                    We'll do our best to get back to you within 6-8 working hours.
                                </small>
                            </div>
                            <div class="w-100"></div>
                            <div class="col-12 d-none">
                                <input type="text" id="template-contactform-botcheck" name="template-contactform-botcheck" value="" class="sm-form-control" />
                            </div>
                            <input type="hidden" name="prefix" value="template-contactform-">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- #content end -->