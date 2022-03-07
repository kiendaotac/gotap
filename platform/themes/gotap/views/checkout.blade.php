<div class="container">
    <form id="form-payment" method="POST" action="{{ route('public.checkout.post') }}" class="paymentForm">
        @csrf
    <div class="row">
        <div class="col-md-7 ">
            <div class=" paymentContent">
                <div>
                        <h2 class="mb-3 mt-3">THÔNG TIN NHẬN HÀNG</h2>
                        <br>
                        <div class="mb-3">
                            <input type="text" class="form-control" id="name" name="name" placeholder="Họ và tên" required="">
                            @if($errors->has('name'))
                            <small class="error_name" style="color:red;">{{ $errors->first('name') }}</small>
                            @endif
                        </div>
                        <div>
                            <div class="row">
                                <div class="col-md-7 mb-3 col-6">
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" required="">
                                    @if($errors->has('email'))
                                    <small class="error_email" style="color:red;">{{ $errors->first('email') }}</small>
                                    @endif
                                </div>
                                <div class="col-md-5 mb-3 col-6">
                                    <input type="number" class="form-control" id="phone" name="phone" placeholder="Số điện thoại" required="">
                                    @if($errors->has('phone'))
                                    <small class="error_phone" style="color:red;">{{ $errors->first('phone') }}</small>
                                    @endif
                                </div>
                            </div>

                        </div>
                        <div class="mb-3">
                            <input type="text" class="form-control" id="address" name="address" placeholder="Địa chỉ" required="">
                            @if($errors->has('address'))
                            <small class="error_address" style="color:red;">{{ $errors->first('address') }}</small>
                            @endif
                        </div>
                        <div class="mb-3">
                            <textarea name="note" id="note" placeholder="Ghi chú" class="form-control"></textarea>
                            @if($errors->has('note'))
                            <small class="error_note" style="color:red;">{{ $errors->first('note') }}</small>
                            @endif
                        </div>
{{--                        <div class="mb-3">--}}
{{--                            <label for="bank">Chuyển Khoản</label>--}}
{{--                            <input type="radio" id="bank" name="payment">--}}
{{--                            <label for="cod">COD</label>--}}
{{--                            <input type="radio" id="cod" name="payment">--}}
{{--                        </div>--}}
                    <div id="payment" class="woocommerce-checkout-payment">
                        <ul class="wc_payment_methods payment_methods methods" style="padding-left: 0!important;">
                            <li class="wc_payment_method payment_method_momo_qr_scan">
                                <div class="flex space-x-3 items-center">
                                    <input id="payment_method_momo_qr_scan" type="radio" class="input-radio" name="payment_method" value="bank" data-order_button_text="">
                                    <img class="main-img" src="https://hstatic.net/0/0/global/design/seller/image/payment/other.svg">
                                    <label for="payment_method_momo_qr_scan" style="margin: 0 0 0 15px !important;">
                                        Chuyển khoản qua ngân hàng
                                    </label>
                                </div>
                                <div class="payment_box payment_method_momo_qr_scan">
                                    <p>{!! theme_option('bank-info') !!}</p>
                                </div>
                            </li>
                            <li class="wc_payment_method payment_method_cod">
                                <div class="flex space-x-3 items-center">
                                    <input id="payment_method_cod" type="radio" class="input-radio" name="payment_method" value="cod" checked="checked" data-order_button_text="">
                                    <img class="main-img" src="https://hstatic.net/0/0/global/design/seller/image/payment/cod.svg">
                                    <label for="payment_method_cod" style="margin: 0 0 0 15px !important;">
                                        Thanh toán khi nhận hàng (COD)
                                    </label>
                                </div>
                            </li>
                        </ul>
                    </div>
                        <div class="paymentBtn">
                            <div style="margin:auto;">
                                <input type="submit" id="finish-order" class="btn btn-primary" value="HOÀN TẤT ĐƠN HÀNG">
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <div class="col-md paymentPC pt-20">
            <div>
                @foreach(\Cart::instance('cart')->content() as $cart)
                <div class="paymentItems flex">
                    <div class="paymentItems01">
                        <img width="100px" class="img-fluid" src="{{ RvMedia::getImageUrl(\Botble\ProductCard\Models\ProductCard::findOrFail($cart->id)->image1) }}" alt="{{ $cart->name }}">
                    </div>
                    <div class="paymentItems02">
                        <h5>{{ $cart->name }}</h5>
                        <div class="cart-item-right-action-quantity">
                            <button style="border: 1px solid #ccc;" class="f-button decrease" type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M3.75 12H20.25" stroke="#616161" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                            </button>
                            <input style="width:40px;" name="qty[{{ $cart->id }}]" class="quantity" min="1" data-id="{{ $cart->id }}" data-price="{{ $cart->price }}" value="{{ $cart->qty }}">
                            <button style="border: 1px solid #ccc;" class="f-button add" type="button">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                    <path d="M3.75 12H20.25" stroke="#616161" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                    <path d="M12 3.75V20.25" stroke="#616161" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                </svg>
                            </button>
                        </div>
                        <div class="paymentItems03" style="text-align:center;">
                            {{ number_format($cart->price , 0, ',','.') }} ₫
                            <span class="line-through">{{ number_format($cart->options && $cart->options['old_price'] ? $cart->options['old_price'] :0 , 0, ',','.') }} ₫</span>
                        </div>
                    </div>

                </div>
                @endforeach
                <div class="paymentItems04">
                    <div style="font-size: 24px;font-weight:bold;color:#0D0C22;" class="paymentItems041">
                        Tổng cộng :
                    </div>
                    <div class="paymentItems042" style="font-weight:bold;font-size:24px;">
                        <!-- =============Total Price================ -->
                        @php
                            $total = 0;
                            $oldTotal = 0;
                            foreach (\Cart::instance('cart')->content() as $cart) {
                                $total += $cart->qty * $cart->price;
                                $oldTotal += $cart->qty * $cart->options['old_price'];
                            }
                        @endphp
                        <span class="total-price">{{ number_format($total , 0, ',','.') }} ₫</span>
                        <span class="line-through" style="color: #979797; font-size: 18px">{{ number_format($oldTotal , 0, ',','.') }} ₫</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</div>
<style>
    .quantity {
        margin: 0;
        text-align: center;
    }
    .cart-item-right-action-quantity{
        display: inline-block;
    }
    .paymentItems03{
        display: inline-block;
        margin-left: 20px;
    }
    .paymentItems{
        margin-bottom: 20px;
    }
</style>