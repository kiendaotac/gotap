<div class="pd-wrap">
    <div class="container">
        <div class="heading-section">
            <h2>Thông tin chi tiết sản phẩm</h2>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div id="slider" class="owl-carousel product-slider">
                    <div class="item">
                        <img src="{{ RvMedia::getImageUrl($product->image1) }}" alt="{{ $product->name }}"/>
                    </div>
                    <div class="item">
                        <img src="{{ RvMedia::getImageUrl($product->image2) }}" alt="{{ $product->name }}"/>
                    </div>
                    @if($product->image3)
                        <div class="item">
                            <img src="{{ RvMedia::getImageUrl($product->image3) }}" alt="{{ $product->name }}"/>
                        </div>
                    @endif
                    @if($product->image4)
                        <div class="item">
                            <img src="{{ RvMedia::getImageUrl($product->image4) }}" alt="{{ $product->name }}"/>
                        </div>
                    @endif
                    @if($product->image5)
                        <div class="item">
                            <img src="{{ RvMedia::getImageUrl($product->image5) }}" alt="{{ $product->name }}"/>
                        </div>
                    @endif
                </div>
                <div id="thumb" class="owl-carousel product-thumb pt-10">
                    <div class="item">
                        <img src="{{ RvMedia::getImageUrl($product->image1) }}" alt="{{ $product->name }}"/>
                    </div>
                    <div class="item">
                        <img src="{{ RvMedia::getImageUrl($product->image2) }}" alt="{{ $product->name }}"/>
                    </div>
                    @if($product->image3)
                        <div class="item">
                            <img src="{{ RvMedia::getImageUrl($product->image3) }}" alt="{{ $product->name }}"/>
                        </div>
                    @endif
                    @if($product->image4)
                        <div class="item">
                            <img src="{{ RvMedia::getImageUrl($product->image4) }}" alt="{{ $product->name }}"/>
                        </div>
                    @endif
                    @if($product->image5)
                        <div class="item">
                            <img src="{{ RvMedia::getImageUrl($product->image5) }}" alt="{{ $product->name }}"/>
                        </div>
                    @endif
                </div>
            </div>
            <div class="col-md-6">
                <div class="product-dtl">
                    <div class="product-info">
                        <div class="product-name">{{ $product->name }}</div>
                        <div class="reviews-counter">
                            <div class="rate">
                                <input type="radio" id="star5" name="rate" value="5" checked />
                                <label for="star5" title="text">5 stars</label>
                                <input type="radio" id="star4" name="rate" value="4"  />
                                <label for="star4" title="text">4 stars</label>
                                <input type="radio" id="star3" name="rate" value="3"  />
                                <label for="star3" title="text">3 stars</label>
                                <input type="radio" id="star2" name="rate" value="2" />
                                <label for="star2" title="text">2 stars</label>
                                <input type="radio" id="star1" name="rate" value="1" />
                                <label for="star1" title="text">1 star</label>
                            </div>
                            <span>100 Đánh giá</span>
                        </div>
                        <div class="product-price-discount"><span>{{ number_format($product->price , 0, ',','.') }} ₫</span><span class="line-through"></span></div>
                    </div>
                    <p>{{ $product->description }}</p>
                    <div class="product-count">
                        <label for="size">Số lượng</label>
                        <form action="{{ route('public.member.add-to-cart') }}" method="POST">
                            @csrf
                            <div class="quanlity">
                                <div class="qtyminus">-</div>
                                <div><input type="number" name="qty" value="1" class="qty"></div>
                                <div class="qtyplus">+</div>
                                <input type="hidden" name="id" value="{{ $product->id }}">
                            </div>
                            <div class="inline-block w-100">
                                <button type="submit" class="round-black-btn">Thêm vào giỏ hàng</button>
                                <a href="{{ $product->link }}" class="btn btn-shopee w-50">Mua trên Shopee</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-info-tabs">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                    <p>{{ $product->description }}</p>
                </div>
            </div>
        </div>
    </div>
    <style>
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
    </style>
{{--    <div class="product-relate">--}}
{{--        <div class="product-title">--}}
{{--            <h3>Sản phẩm liên quan</h3>--}}
{{--        </div>--}}
{{--        <div class="product-list">--}}
{{--            <div class="relate-product-owl-carousel">--}}
{{--                <div class="">--}}
{{--                    ẹvjusd--}}
{{--                </div>--}}
{{--                <div class="">--}}

{{--                    juhhhjn--}}
{{--                </div>--}}
{{--                @foreach ($productCards->where('is_card', $product->is_card) as  $key => $product)--}}
{{--                        <div class="product">--}}
{{--                            <div class="product-image">--}}
{{--                                <div class="image-first">--}}
{{--                                    <img src="{{ RvMedia::getImageUrl($product->image1) }}" alt="{{ $product->name }}">--}}
{{--                                </div>--}}
{{--                                <div class="image-second">--}}
{{--                                    <img src="{{ RvMedia::getImageUrl($product->image2) }}" alt="{{ $product->name }}">--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="team-desc team-desc-bg">--}}
{{--                                <div class="team-title">--}}
{{--                                    <h4>--}}
{{--                                        <a href="{{ route('public.product.details', $product->id) }}">{{ $product->name }}</a>--}}
{{--                                    </h4>--}}
{{--                                    <div class="d-inline-block mb-3">--}}
{{--                                        {{ number_format($product->price , 0, ',','.') }} ₫--}}
{{--                                        @if($product->old_price)--}}
{{--                                            <span class="old">{{ number_format($product->old_price , 0, ',','.') }} ₫</span>--}}
{{--                                        @endif--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                                <div class="row">--}}
{{--                                    <div class="col-6 align-center">--}}
{{--                                        <a href="{{ $product->link }}" class="btn btn-shopee w-100">Mua trên Shopee</a>--}}
{{--                                    </div>--}}
{{--                                    <div class="col-6 align-center">--}}
{{--                                        <a href="{{ route('public.checkout', ['id' => $product->id]) }}" class="btn btn-muangay btn-primary w-100">Mua Ngay</a>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                @endforeach--}}
{{--            </div>--}}
{{--        </div>--}}
{{--    </div>--}}
</div>
