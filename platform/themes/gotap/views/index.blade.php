<!-- Slider ============================================= -->
<style>
    section#slider {
        position: relative;
        /* Add this */
    }
    /* Update this */

    video.video-header {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        min-width: 100%;
        min-height: 100%;
        z-index: 0;
        object-position: center;
        object-fit: cover;
    }
</style>
<section id="slider" class="slider-element min-vh-100 bgchanger include-header"
{{--         style="background-color: {{ $products->first()->color ?? null}}; background-image: url('{{ Theme::asset()->url('homepage/assets/images/page/watch-bg.png') }}'); background-position: center center; background-size: cover;"--}}
>
    <video class="video-header" autoplay muted loop src="{{ RvMedia::getImageUrl(theme_option('video-header')) }}">
    </video>
    <div class="slider-inner">
        <div class="vertical-middle slider-element-fade">
            <div class="container py-5">
                <div class="row align-items-center">
                    <div class="col-md-6 text-center text-md-start">
                        <div class="emphasis-title mb-0" id="header-content">
                            {!! $products->first()->description ?? null !!}
{{--                            <span class="text-uppercase d-block text-black-50 product-name" style="letter-spacing:10px; font-size: 18px; color: {{ $products->first() ? $products->first()->name_color : null }}!important; ">{{ $products->first()->name ?? null }}</span>--}}
{{--                            <h2 class="mt-2 fw-semibold font-secondary" style="font-size: 64px;color: {{ $products->first() ? $products->first()->description_color : 'E25B45' }}; line-height: 1.3; letter-spacing: -2px;">--}}
{{--                                <strong class="product-description" style="font-family: 'Roboto Slab', serif;">{{ $products->first()->description ?? null }}</strong>--}}
{{--                            </h2>--}}
{{--                            <h2 class="fw-bold mt-4 product-price" style="color: {{ $products->first() ? $products->first()->price_color : null }};">{{ number_format($products->first()->price ?? 0, 0, ',','.') }} ₫</h2>--}}
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

<!--=====  End of product carousel container  ======-->
<section id="content">
    <div class="content-wrap py-0">
        @foreach($sections as $section)
            {!! $section->content !!}
        @endforeach
        <div id="section-product" class="center page-section">
            <div class="container clearfix">
                <p style="text-align: center;">
                    <span style="font-size:36px;">
                    <span style="color:#e74c3c;">
                    <strong>
                    <span style="font-family:Arial,Helvetica,sans-serif;">
                    <span style="line-height:normal">SẢN PHẨM</span>
                    </span></strong></span></span></p>
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
                            <button class="text-capitalize nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Thẻ cá nhân thông minh</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="text-capitalize nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Sticker thông minh</button>
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
        <div id="section-rate" class="center rate-section">
            <div class="container">
                <p style="text-align: center;"><span style="font-size:28px;"><span style="font-family:Arial,Helvetica,sans-serif;"><b>Khách hàng nói gì về chúng tôi</b></span></span></p>
                <div id="oc-watch" class="owl-carousel carousel-widget"
                     data-margin="0"
                     data-nav="true"
                     data-pagi="true"
                     data-items="1"
                     data-autoplay="1000"
                     data-speed="800"
                     data-loop="true">
                    @foreach($reviews as $review)
                        <div class="row">
                            <div class="col-6">
                                {!! $review->review !!}
                            </div>
                            <div class="col-6">
                                <img src="{{ RvMedia::getImageUrl($review->image) }}" alt="{{ $review->name }}">
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div id="section-works" class="page-section pt-0">
            <div class="section m-0">
                <div class="container clearfix">
                    <div class="mx-auto center" style="max-width: 900px;">
                        <p style="text-align: center;"><span style="color:#e74c3c;"><strong><span style="font-size:28px;">THẺ C&Aacute; NH&Acirc;N TH&Ocirc;NG MINH GOTAP - PHỤ KIỆN C&Ocirc;NG NGHỆ</span></strong></span></p>
                        <p style="text-align: center;"><span style="font-size:28px;"><span style="color:#3498db;"><span style="font-family:Arial,Helvetica,sans-serif;">&quot; More than just a touch - Hơn cả 1 chạm &quot;</span></span></span></p>

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
    </div>
</section>
<!-- #content end -->