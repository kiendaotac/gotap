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
                            <span class="text-uppercase d-block text-black-50 product-name" style="letter-spacing:10px; font-size: 18px; color: {{ $products->first() ? $products->first()->name_color : null }}!important; ">{{ $products->first()->name ?? null }}</span>
                            <h2 class="mt-2 fw-semibold font-secondary" style="font-size: 64px;color: {{ $products->first() ? $products->first()->description_color : 'E25B45' }}; line-height: 1.3; letter-spacing: -2px;">
                                <strong class="product-description" style="font-family: 'Roboto Slab', serif;">{{ $products->first()->description ?? null }}</strong>
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
                             data-autoplay="8000"
                             data-speed="800"
                             data-loop="true">
                            @foreach($products as $product)
                                <img src="{{ RvMedia::getImageUrl($product->image) }}" alt="{{ $product->name }}" data-product='{{ $product }}'>
                            @endforeach
                        </div>

<!--                        <div id="oc-watch-bg"
                             style="background: #E25B45; width: 360px; height: 360px; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); opacity: 1; border-radius: 50%;">
                        </div>-->
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
<!--=============================================
=            product carousel container         =
=============================================-->

{{--<div class="col-12 product-carousel-container mb-70 mb-md-50 mb-sm-30">--}}
{{--    <div class="container wide">--}}
{{--        <div class="row column-five">--}}
{{--            &lt;!&ndash;=======  single product  =======&ndash;&gt;--}}

{{--                <div class="col-12 col-lg-3 col-md-6 col-sm-6 mb-45">--}}
{{--                    <div class="single-product">--}}
{{--                        &lt;!&ndash;=======  single product image  =======&ndash;&gt;--}}
{{--                        <div class="single-product__image">--}}
{{--                            <a class="image-wrap" href="{{ $product->url }}">--}}
{{--                                <img src="{{ RvMedia::getImageUrl($product->image1) }}" class="img-fluid" alt="">--}}
{{--                                <img src="{{ RvMedia::getImageUrl($product->image2) }}" class="img-fluid" alt="">--}}
{{--                            </a>--}}
{{--                        </div>--}}
{{--                        &lt;!&ndash;=======  End of single product image  =======&ndash;&gt;--}}
{{--                        &lt;!&ndash;=======  single product content  =======&ndash;&gt;--}}
{{--                        <div class="single-product__content">--}}
{{--                            <div class="title">--}}
{{--                                <h3> <a href="{{ $product->url }}">{{ $product->name }}</a></h3>--}}
{{--                            </div>--}}
{{--                            <div class="price">--}}
{{--                                <span class="main-price">{{ $product->price }}</span>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        &lt;!&ndash;=======  End of single product content  =======&ndash;&gt;--}}
{{--                    </div>--}}
{{--                </div>--}}

{{--        &lt;!&ndash;=======  End of single product  =======&ndash;&gt;--}}
{{--        </div>--}}
{{--    </div>--}}
{{--</div>--}}

<!--=====  End of product carousel container  ======-->
<section id="content">
    <div class="content-wrap py-0">
{{--        <div id="section-about" class="center page-section">--}}
{{--            <div class="container">--}}
{{--                <div class="w-100 text-center">--}}
{{--                    <h6></h6>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div class="container clearfix">--}}
{{--                <h2 class="mx-auto bottommargin font-body" style="max-width: 700px; font-size: 40px;background-image: linear-gradient(to right, #f8d05a, #ea4157, #6584ff); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">--}}
{{--                    {{ $introductions->where('is_title', 1)->first() ? $introductions->where('is_title', 1)->first()->name : '' }}--}}
{{--                </h2>--}}
{{--                <ul class="lead mx-auto bottommargin check-list" style="max-width: 1000px; text-align: left;">--}}
{{--                    @foreach($introductions->where('is_title', 0) as $introduction)--}}
{{--                        <li>{{ $introduction->name }}</li>--}}
{{--                    @endforeach--}}
{{--                </ul>--}}

{{--                <div class="clear"></div>--}}
{{--            </div>--}}
{{--        </div>--}}
        @foreach($sections as $section)
            {!! $section->content !!}
        @endforeach
{{--        <div id="section-connect" class="page-section pt-0">--}}
{{--            <div class="container clearfix">--}}
{{--                <div class="row align-items-stretch">--}}
{{--                    <div class="col-lg-4 d-none d-md-block">--}}
{{--                        <div class="video-container">--}}
{{--                            <video autoplay muted loop>--}}
{{--                                <source src="https://shop.tappi.vn/wp-content/uploads/2021/03/set-up-the-ca-nhan-thong-minh-tappi.mp4" type="video/mp4" />--}}
{{--                            </video>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="col-lg-8">--}}
{{--                        <h2 class="mx-auto bottommargin font-body" style="max-width: 700px; font-size: 40px;background-image: linear-gradient(to right, #f8d05a, #ea4157, #6584ff); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">--}}
{{--                            Giao diện quản trị trực quan--}}
{{--                        </h2>--}}
{{--                        <div class="row align-items-stretch clearfix">--}}
{{--                            <div class="col-lg-6 col-md-6 col-padding">--}}
{{--                                <div class="feature-box fbox-center fbox-dark fbox-plain">--}}
{{--                                    <div class="fbox-icon">--}}
{{--                                        <i class="icon-et-mobile op-gradient-icon"></i>--}}
{{--                                    </div>--}}
{{--                                    <div class="fbox-content fbox-content-sm">--}}
{{--                                        <h2>Dashboard</h2>--}}
{{--                                        <p style="font-weight: 300; font-size: 18px;line-height: 26px; text-align: left">Trang quản lý mạnh mẽ, có nhiều tính năng cho bạn tha hộ cá nhân hoá</p>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="col-lg-6 col-md-6 col-padding">--}}
{{--                                <div class="feature-box fbox-center fbox-dark fbox-plain">--}}
{{--                                    <div class="fbox-icon">--}}
{{--                                        <i class="icon-et-presentation op-gradient-icon"></i>--}}
{{--                                    </div>--}}
{{--                                    <div class="fbox-content fbox-content-sm">--}}
{{--                                        <h2>Profile</h2>--}}
{{--                                        <p style="font-weight: 300; font-size: 18px;line-height: 26px; text-align: left">Trang thông tin cá nhân trực quan, dễ dàng sử dụng</p>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
{{--        <div id="section-profile" class="page-section pt-0">--}}
{{--            <div class="container clearfix">--}}
{{--                <div class="row align-items-stretch">--}}
{{--                    <div class="col-lg-8">--}}
{{--                        <h2 class="mx-auto bottommargin font-body" style="max-width: 700px; font-size: 40px;background-image: linear-gradient(to right, #f8d05a, #ea4157, #6584ff); -webkit-background-clip: text; -webkit-text-fill-color: transparent;">--}}
{{--                            Kết nối dễ dàng và nhanh chóng--}}
{{--                        </h2>--}}
{{--                        <div class="row align-items-stretch clearfix">--}}
{{--                            <div class="col-lg-6 col-md-6 col-padding">--}}
{{--                                <div class="feature-box fbox-center fbox-dark fbox-plain">--}}
{{--                                    <div class="fbox-icon">--}}
{{--                                        <i class="icon-et-mobile op-gradient-icon"></i>--}}
{{--                                    </div>--}}
{{--                                    <div class="fbox-content fbox-content-sm">--}}
{{--                                        <h2>NFC</h2>--}}
{{--                                        <p style="font-weight: 300; font-size: 18px;line-height: 26px; text-align: left">Chạm nhẹ smartphone vào thẻ Gotap là bạn đã có thể chia sẻ những thông tin mình muốn cho bạn bè, đối tác, khách hàng..</p>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="col-lg-6 col-md-6 col-padding">--}}
{{--                                <div class="feature-box fbox-center fbox-dark fbox-plain">--}}
{{--                                    <div class="fbox-icon">--}}
{{--                                        <i class="icon-et-presentation op-gradient-icon"></i>--}}
{{--                                    </div>--}}
{{--                                    <div class="fbox-content fbox-content-sm">--}}
{{--                                        <h2>Mã QR</h2>--}}
{{--                                        <p style="font-weight: 300; font-size: 18px;line-height: 26px; text-align: left">Sử dụng camera smartphone để quét mã QR ở mặt sau thẻ</p>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                    <div class="col-lg-4 d-none d-md-block">--}}
{{--                        <div class="video-container">--}}
{{--                            <video autoplay muted loop>--}}
{{--                                <source src="https://shop.tappi.vn/wp-content/uploads/2021/03/the-ca-nhan-thong-minh-tappi-card.mp4" type="video/mp4" />--}}
{{--                            </video>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
        <div id="section-product" class="center page-section">
            <div class="container clearfix">
                <h2 class="" style="font-family: Arial, Helvetica, sans-serif !important;">Sản phẩm</h2>
                <style>
                    .nav.nav-tabs {
                        justify-content: center;
                    }
                    .nav.nav-tabs li {
                        width: 50%;
                    }
                    .nav.nav-tabs li button {
                        width: 100%;
                    }
                    .nav-tabs {
                        border: none !important;
                    }
                    .nav-tabs .nav-link.active {
                        border: none !important;
                    }
                    .nav.nav-tabs .nav-item {
                        border: none;
                    }
                    .nav.nav-tabs .nav-item .nav-link {
                        background-color: #dddddb;
                        color: #444444;
                    }
                    .nav.nav-tabs .nav-item .nav-link.active {
                        background-color: #e74c3c;
                        color: #ffffff;
                    }
                    .btn-shopee {
                        border-radius: 0!important;
                        background-color: #f75800;
                        color: #ffffff;
                    }
                    .btn-muangay {
                        border-radius: 0 !important;
                    }
                    .team-title span.old {
                        text-decoration-line:line-through;
                    }
                    .team-title span {
                        display: inline;
                    }
                    .team-title h4 {
                        min-height: 50px;
                    }
                    button.nav-link {
                        font-family: Arial, Helvetica, sans-serif !important;
                    }
                </style>
                    <ul class="nav nav-tabs pt-10" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Thẻ cá nhân thông minh</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Sticker thông minh</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <div class="pt-20">
                                <div class="row">
                                    @foreach ($productCards->where('is_card', 1) as  $key => $product)
                                    <div class="col-md-6 col-lg-4 pb-5">
                                        <div class="product">
                                            <div class="product-image">
                                                <div class="image-first">
                                                    <img src="{{ RvMedia::getImageUrl($product->image1) }}" alt="{{ $product->name }}">
                                                </div>
                                                <div class="image-second">
                                                    <img src="{{ RvMedia::getImageUrl($product->image2) }}" alt="{{ $product->name }}">
                                                </div>
                                            </div>
                                            <div class="team-desc team-desc-bg">
                                                <div class="team-title">
                                                    <h4>
                                                        <a href="{{ route('public.product.details', $product->id) }}">{{ $product->name }}</a>
                                                    </h4>
                                                    <div class="d-inline-block mb-3">
                                                        {{ number_format($product->price , 0, ',','.') }} ₫
                                                        @if($product->old_price)
                                                            <span class="old">{{ number_format($product->old_price , 0, ',','.') }} ₫</span>
                                                        @endif
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-6 align-center">
                                                        <a href="{{ $product->link }}" class="btn btn-shopee w-100">Mua trên Shopee</a>
                                                    </div>
                                                    <div class="col-6 align-center">
                                                        <a href="{{ route('public.product.details', $product->id) }}" class="btn btn-muangay btn-primary w-100">Mua Ngay</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="pt-20">
                                <div class="row">
                                    @foreach ($productCards->where('is_card', 0) as  $key => $product)
                                        <div class="col-md-6 col-lg-4 pb-5">
                                            <div class="product">
                                                <div class="product-image">
                                                    <div class="image-first">
                                                        <img src="{{ RvMedia::getImageUrl($product->image1) }}" alt="{{ $product->name }}">
                                                    </div>
                                                    <div class="image-second">
                                                        <img src="{{ RvMedia::getImageUrl($product->image2) }}" alt="{{ $product->name }}">
                                                    </div>
                                                </div>
                                                <div class="team-desc team-desc-bg">
                                                    <div class="team-title">
                                                        <h4>
                                                            <a href="{{ route('public.product.details', $product->id) }}">{{ $product->name }}</a>
                                                        </h4>
                                                        <div class="d-inline-block mb-3">
                                                        {{ number_format($product->price , 0, ',','.') }} ₫
                                                        @if($product->old_price)
                                                        <span class="old">{{ number_format($product->old_price , 0, ',','.') }} ₫</span>
                                                        @endif
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-6 align-center">
                                                            <a href="{{ $product->link }}" class="btn btn-shopee w-100">Mua trên Shopee</a>
                                                        </div>
                                                        <div class="col-6 align-center">
                                                            <a href="{{ route('public.product.details', $product->id) }}" class="btn btn-muangay btn-primary w-100">Mua Ngay</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <div id="section-question" class="center page-section">
            <div class="container">
                <p style="text-align: center;"><span style="font-size:28px;"><span style="font-family:Arial,Helvetica,sans-serif;"><b>NHỮNG C&Acirc;U HỎI THƯỜNG GẶP?</b></span></span></p>

                <div id="gtx-trans" style="position: absolute; left: 81px; top: 0px;">
                    <div class="gtx-trans-icon">&nbsp;</div>
                </div>

                <div class="accordionwrap">
                    @foreach($questions as $question)
                    <div class="accordionItem close">
                        <h2 class="accordionItemHeading">{{ $question->question }}
                            <span>
                                <i class="fa fa-angle-down"></i>
                            </span>
                        </h2>
                        <div class="accordionItemContent">
                            {!! $question->answer !!}
                        </div>
                    </div>
                    @endforeach
                </div>
                <script type="text/javascript">
                    var accItem = document.getElementsByClassName('accordionItem');
                    var accHD = document.getElementsByClassName('accordionItemHeading');
                    for (i = 0; i < accHD.length; i++) {
                        accHD[i].addEventListener('click', toggleItem, false);
                    }
                    function toggleItem() {
                        var itemClass = this.parentNode.className;
                        for (i = 0; i < accItem.length; i++) {
                            accItem[i].className = 'accordionItem close';
                        }
                        if (itemClass == 'accordionItem close') {
                            this.parentNode.className = 'accordionItem open';
                        }
                    }
                </script>
            </div>
        </div>
        <div id="section-works" class="page-section pt-0">
            <div class="section m-0">
                <div class="container clearfix">
                    <div class="mx-auto center" style="max-width: 900px;">
                        <p style="text-align: center;"><span style="color:#e74c3c;"><strong><span style="font-size:28px;">THẺ C&Aacute; NH&Acirc;N TH&Ocirc;NG MINH GOTAP - PHỤ KIỆN C&Ocirc;NG NGHỆ</span></strong></span></p>
                        <p style="text-align: center;"><span style="font-size:28px;"><span style="color:#3498db;"><span style="font-family:Arial,Helvetica,sans-serif;">&quot; More than jusst a touch - Hơn cả 1 chạm &quot;</span></span></span></p>

                    </div>
                </div>
            </div>
            <div class="grid-container row g-0" style="height: 400px!important;">
                <div class="w-100">
                    <div class="video-container mx-auto" style="width: 100% !important;">
                        <video autoplay muted loop style="border-radius: 0!important;">
                            <source src="{{ RvMedia::getImageUrl(theme_option('video-background')) }}" type="video/mp4" />
                        </video>
                    </div>
                </div>
            </div>
            <!-- #portfolio end -->
        </div>
{{--        <div id="section-contact" class="page-section pt-0">--}}
{{--            <div class="row mx-0 bottommargin-lg align-items-stretch">--}}
{{--                <div class="col-lg-8 col-md-6 d-none d-md-block px-0">--}}
{{--                    <div class="gmap h-100" data-latitude="-37.813629" data-longitude="144.963058"--}}
{{--                         data-maptype="ROADMAP" data-zoom="14"--}}
{{--                         data-markers='[{ latitude:-37.813629, longitude:144.963058, html: "Melbourne, Australia", icon:{ image: "images/icons/map-icon-red.png", iconsize: [32, 32], iconanchor: [14,44] } }]'--}}
{{--                         data-styles='[{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.2}]},{"featureType":"administrative","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"administrative.country","elementType":"all","stylers":[{"visibility":"simplified"}]},{"featureType":"administrative.country","elementType":"geometry","stylers":[{"visibility":"simplified"}]},{"featureType":"administrative.country","elementType":"labels.text","stylers":[{"visibility":"simplified"}]},{"featureType":"administrative.province","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"administrative.locality","elementType":"all","stylers":[{"visibility":"simplified"},{"saturation":"-100"},{"lightness":"30"}]},{"featureType":"administrative.neighborhood","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"administrative.land_parcel","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"landscape","elementType":"all","stylers":[{"visibility":"simplified"},{"gamma":"0.00"},{"lightness":"74"}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"landscape.man_made","elementType":"all","stylers":[{"lightness":"3"}]},{"featureType":"poi","elementType":"all","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road","elementType":"geometry","stylers":[{"visibility":"simplified"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]'>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--                <div class="col-lg-4 col-md-6" style="background-color: #F5F5F5;">--}}
{{--                    <div class="col-padding">--}}
{{--                        <h3 class="font-body fw-normal ls1">Thông tin liên hệ</h3>--}}
{{--                        <div style="font-size: 16px; line-height: 1.7;">--}}
{{--                            <address style="line-height: 1.7;">--}}
{{--                                <strong>Địa chỉ:</strong>--}}
{{--                                <br>--}}
{{--                                {{ theme_option('address') }}--}}
{{--                            </address>--}}
{{--                            <div class="clear topmargin-sm"></div>--}}
{{--                            <div class="clear topmargin"></div>--}}
{{--                            <address style="line-height: 1.7;">--}}
{{--                                <strong>Điện thoại:</strong>--}}
{{--                                <br>--}}
{{--                                {{ theme_option('phone') }}--}}
{{--                            </address>--}}
{{--                            <div class="clear topmargin"></div>--}}
{{--                            <address style="line-height: 1.7;">--}}
{{--                                <strong>Email:</strong>--}}
{{--                                <br>--}}
{{--                                {{ theme_option('email') }}--}}
{{--                            </address>--}}
{{--                        </div>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--            <div class="container clearfix">--}}
{{--                <div class="mx-auto topmargin" style="max-width: 850px;">--}}
{{--                    <div class="form-widget">--}}
{{--                        <div class="form-result"></div>--}}
{{--                        <form class="row mb-0" id="template-contactform" name="template-contactform" action="{{ route('public.send.contact') }}" method="post">--}}
{{--                            @csrf--}}
{{--                            <div class="form-process">--}}
{{--                                <div class="css3-spinner">--}}
{{--                                    <div class="css3-spinner-scale-ripple">--}}
{{--                                        <div></div>--}}
{{--                                        <div></div>--}}
{{--                                        <div></div>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="col-md-6 mb-4">--}}
{{--                                <input type="text" id="template-contactform-name" name="name" value="" class="sm-form-control border-form-control required" placeholder="Họ Tên" />--}}
{{--                            </div>--}}
{{--                            <div class="col-md-6 mb-4">--}}
{{--                                <input type="email" id="template-contactform-email" name="email" value="" class="required email sm-form-control border-form-control" placeholder="Địa chỉ Email" />--}}
{{--                            </div>--}}
{{--                            <div class="w-100"></div>--}}
{{--                            <div class="col-md-4 mb-4">--}}
{{--                                <input type="text" id="template-contactform-phone" name="phone" value="" class="sm-form-control border-form-control" placeholder="Số điện thoại" />--}}
{{--                            </div>--}}
{{--                            <div class="col-md-8 mb-4">--}}
{{--                                <input type="text" id="template-contactform-subject" name="subject" value="" class="required sm-form-control border-form-control" placeholder="Chủ đề" />--}}
{{--                            </div>--}}
{{--                            <div class="w-100"></div>--}}
{{--                            <div class="col-12 mb-4">--}}
{{--                                <textarea class="required sm-form-control border-form-control" id="template-contactform-message" name="content" rows="7" cols="30" placeholder="Nội dung" style="height: 100px!important;"></textarea>--}}
{{--                            </div>--}}
{{--                            <div class="col-12 center mb-4">--}}
{{--                                <button class="button button-border button-circle fw-medium ms-0 topmargin-sm" type="submit" id="template-contactform-submit" name="template-contactform-submit" value="submit">Gửi</button>--}}
{{--                                <br>--}}
{{--                                <small style="display: block; font-size: 13px; margin-top: 15px;">--}}
{{--                                    Hãy nhập thông tin để chung tôi liên hệ với bạn.--}}
{{--                                </small>--}}
{{--                            </div>--}}
{{--                        </form>--}}
{{--                    </div>--}}
{{--                </div>--}}
{{--            </div>--}}
{{--        </div>--}}
    </div>
</section>
<!-- #content end -->