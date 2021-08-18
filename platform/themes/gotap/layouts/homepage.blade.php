<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">

{!! Theme::partial('homepage.head') !!}

<body class="stretched side-push-panel">

<div class="body-overlay"></div>

<div id="side-panel" class="bgchanger">

    <div id="side-panel-trigger-close" class="side-panel-trigger"><a href="#"><i class="icon-line-cross"></i></a>
    </div>

    <div class="side-panel-wrap">

        <div class="widget widget_links clearfix">

            <h4>About Canvas</h4>

            <div style="font-size: 14px; line-height: 1.7;">
                <address style="line-height: 1.7;">
                    795 Folsom Ave, Suite 600<br>
                    San Francisco, CA 94107<br>
                </address>

                <div class="clear topmargin-sm"></div>

                <abbr title="Phone Number">Phone:</abbr> (1) 8547 632521<br>
                <abbr title="Fax">Fax:</abbr> (1) 11 4752 1433<br>
                <abbr title="Email Address">Email:</abbr> info@canvas.com
            </div>

        </div>

        <div class="widget clearfix">

            <h4>Connect Socially</h4>

            <a href="#" class="social-icon si-small si-colored si-facebook" title="Facebook">
                <i class="icon-facebook"></i>
                <i class="icon-facebook"></i>
            </a>
            <a href="#" class="social-icon si-small si-colored si-twitter" title="Twitter">
                <i class="icon-twitter"></i>
                <i class="icon-twitter"></i>
            </a>
            <a href="#" class="social-icon si-small si-colored si-github" title="Github">
                <i class="icon-github"></i>
                <i class="icon-github"></i>
            </a>
            <a href="#" class="social-icon si-small si-colored si-pinterest" title="Pinterest">
                <i class="icon-pinterest"></i>
                <i class="icon-pinterest"></i>
            </a>
            <a href="#" class="social-icon si-small si-colored si-forrst" title="Forrst">
                <i class="icon-forrst"></i>
                <i class="icon-forrst"></i>
            </a>
            <a href="#" class="social-icon si-small si-colored si-linkedin" title="LinkedIn">
                <i class="icon-linkedin"></i>
                <i class="icon-linkedin"></i>
            </a>
            <a href="#" class="social-icon si-small si-colored si-gplus" title="Google Plus">
                <i class="icon-gplus"></i>
                <i class="icon-gplus"></i>
            </a>
            <a href="#" class="social-icon si-small si-colored si-instagram" title="Instagram">
                <i class="icon-instagram"></i>
                <i class="icon-instagram"></i>
            </a>
            <a href="#" class="social-icon si-small si-colored si-flickr" title="Flickr">
                <i class="icon-flickr"></i>
                <i class="icon-flickr"></i>
            </a>
            <a href="#" class="social-icon si-small si-colored si-skype" title="Skype">
                <i class="icon-skype"></i>
                <i class="icon-skype"></i>
            </a>

        </div>

    </div>

</div>

<!-- Document Wrapper
============================================= -->
<div id="wrapper" class="clearfix">

    {!! Theme::partial('homepage.header') !!}
    {!! Theme::content() !!}
    {!! Theme::partial('homepage.footer') !!}
</div>
<!-- #wrapper end -->
<div id="gotoTop" class="icon-angle-up"></div>

{!! Theme::footer() !!}
<script src="https://maps.google.com/maps/api/js?key=AIzaSyDNI_ZWPqvdS6r6gPVO50I4TlYkfkZdXh8"></script>
<script>
    jQuery(window).on('pluginCarouselReady', function () {
        let owlWatch = $('#oc-watch'),
            productName = $('.product-name'),
            productDescription = $('.product-description'),
            productPrice = $('.product-price'),
            owlWatchbg = $('.bgchanger');

        owlWatch.on('translated.owl.carousel changed.owl.carousel', function (event) {
            let product = owlWatch.find('.active img').data('product')
            if (product) {
                owlWatchbg.css({ 'background-color': product.color })
                productName.text(product.name)
                productDescription.text(product.description)
                productPrice.text(new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(product.price))
            }
            /*var bgcolor = owlWatch.find('.active img').attr('data-bg');
            owlWatchbg.css({ 'background-color': bgcolor });*/
        });
    });


</script>
</body>
</html>