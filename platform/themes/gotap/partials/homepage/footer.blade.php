<footer id="footer" class="dark border-0">
    <div class="container center">
        <div class="footer-widgets-wrap">
            <div class="row mx-auto clearfix">
                <div class="col-lg-4">
                    <div class="widget clearfix">
                        <h4>Site Links</h4>
                        <ul class="list-unstyled footer-site-links mb-0">
                            <li>
                                <a href="#" data-scrollto="#wrapper" data-easing="easeInOutExpo" data-speed="1250" data-offset="70">Top</a>
                            </li>
                            <li>
                                <a href="#" data-scrollto="#section-about" data-easing="easeInOutExpo" data-speed="1250" data-offset="70">About</a>
                            </li>
                            <li>
                                <a href="#" data-scrollto="#section-works" data-easing="easeInOutExpo" data-speed="1250" data-offset="70">Works</a>
                            </li>
                            <li>
                                <a href="#" data-scrollto="#section-services" data-easing="easeInOutExpo" data-speed="1250" data-offset="70">Services</a>
                            </li>
                            <li>
                                <a href="#" data-scrollto="#section-blog" data-easing="easeInOutExpo" data-speed="1250" data-offset="70">Blog</a>
                            </li>
                            <li>
                                <a href="#" data-scrollto="#section-contact" data-easing="easeInOutExpo" data-speed="1250" data-offset="70">Contact</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="widget subscribe-widget clearfix" data-loader="button">
                        <h4>Subscribe</h4>
                        <div class="widget-subscribe-form-result"></div>
                        <form id="widget-subscribe-form" action="" method="post" class="mb-0">
                            <input type="email" id="widget-subscribe-form-email" name="widget-subscribe-form-email" class="form-control form-control-lg not-dark required email" placeholder="Your Email Address">
                            <button class="button button-border button-circle button-light topmargin-sm" type="submit">Subscribe Now</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="widget clearfix">
                        <h4>Liên hệ</h4>
                        <p class="lead">{{ theme_option('address') }}</p>
                        <p class="lead"><a href="tel:{{ theme_option('phone') }}">{{ theme_option('phone') }}</a></p>
                        <p class="lead"><a href="mailto:{{ theme_option('email') }}">{{ theme_option('email') }}</a></p>
                        <div class="center topmargin-sm">
                            <a href="{{ theme_option('facebook') }}" class="social-icon inline-block border-0 si-small si-facebook"
                               title="Facebook">
                                <i class="icon-facebook"></i>
                                <i class="icon-facebook"></i>
                            </a>
                            <a href="{{ theme_option('twitter') }}" class="social-icon inline-block border-0 si-small si-twitter"
                               title="Twitter">
                                <i class="icon-twitter"></i>
                                <i class="icon-twitter"></i>
                            </a>
                            <a href="{{ theme_option('tiktok') }}" class="social-icon inline-block border-0 si-small si-tiktok"
                               title="Tiktok">
                                <i class="icon-tiktok"></i>
                                <i class="icon-tiktok"></i>
                            </a>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>
    <div id="copyrights">
        <div class="container center clearfix">
            {{ theme_option('copyright') }}
        </div>
    </div>
</footer>