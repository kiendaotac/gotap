@extends('core/base::layouts.master')
@section('content')
    <div class="max-width-1200">
        <div class="ui-layout">
            <div class="flexbox-layout-sections" id="main-order-content">
                <div class="flexbox-layout-section-primary mt20">
                    <div class="ui-layout__item">
                        <div class="wrapper-content">
                            <div class="pd-all-20">
                                <div class="mt20">
                                    <svg class="svg-next-icon svg-next-icon-size-16 svg-next-icon-gray">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#next-order-unfulfilled-16"></use>
                                    </svg>
                                    <strong class="ml5">Thông tin chi tiết đơn hàng</strong>
                                </div>
                            </div>
                            <div class="pd-all-20 p-none-t border-top-title-main">
                                <div class="table-wrap">
                                    <table class="table-order table-divided">
                                        <tbody>
                                        @php
                                            $total = 0;
                                            $totalPrice = 0;
                                        @endphp
                                            @foreach ($order->products as $orderProduct)
                                                @if ($orderProduct->info)
                                                    @php
                                                        $total += $orderProduct->qty;
                                                        $totalPrice += $orderProduct->info->price * $orderProduct->qty;
                                                    @endphp
                                                    <tr>
                                                        <td class="width-60-px min-width-60-px vertical-align-t">
                                                            <div class="wrap-img">
                                                                <img class="thumb-image thumb-image-cartorderlist" src="{{ RvMedia::getImageUrl($orderProduct->info->image1 ?: RvMedia::getDefaultImage()) }}" alt="{{ $orderProduct->info->name }}"></div>
                                                        </td>
                                                    <td class="pl5 p-r5 min-width-200-px">
                                                        <a class="text-underline hover-underline pre-line" target="_blank" href="{{ $orderProduct->info ? route('product-card.edit', $orderProduct->info->id) : '#' }}" title="{{ $orderProduct->info->name }}">
                                                            {{ $orderProduct->info->name }}
                                                        </a>
                                                    </td>
                                                    <td class="pl5 p-r5 text-end">
                                                        <div class="inline_block">
                                                            <span> {{ number_format($orderProduct->info->price , 0, ',','.') }} ₫</span>
                                                        </div>
                                                    </td>
                                                    <td class="pl5 p-r5 text-center">x</td>
                                                    <td class="pl5 p-r5">
                                                        <span>{{ $orderProduct->qty }}</span>
                                                    </td>
                                                    <td class="pl5 text-end"> {{ number_format($orderProduct->info->price * $orderProduct->qty , 0, ',','.') }} ₫</td>
                                                    </tr>
                                                @endif
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="pd-all-20 p-none-t border-top-title-main">
                                <div class="table-wrap">
                                    <table class="table-order table-divided">
                                        <th>
                                            <tr>
                                                <td colspan="4" width="68%">
                                                    <svg xmlns="http://www.w3.org/2000/svg" class="svg-next-icon-size-16" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                                                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                                                    </svg>
                                                    <strong class="ml5">Thông tin số tiền thanh toán</strong>
                                                </td>
                                                <td width="18%">Tổng số lượng</td>
                                                <td>Tổng tiền</td>
                                            </tr>
                                        </th>
                                        <tbody>
                                        <tr>
                                            <td colspan="4"></td>
                                            <td>{{ $total }}</td>
                                            <td>{{ number_format($totalPrice , 0, ',','.') }} ₫</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="pd-all-20 border-top-title-main">
                                <div class="flexbox-grid-default flexbox-align-items-center">
                                    <div class="flexbox-auto-left">
                                        <form action="{{ route('order.confirm') }}" method="post">
                                            @csrf
                                            <input type="hidden" name="id" value="{{ $order->id }}">
                                            <button type="submit" class="btn btn-primary btn-confirm-order">Xác nhận thanh toán đơn hàng</button>
                                        </form>
                                    </div>
                                    <div class="flexbox-auto-right pl-5">
                                        <form action="{{ route('order.cancel') }}" method="post">
                                            @csrf
                                            <input type="hidden" name="id" value="{{ $order->id }}">
                                            <button class="btn btn-danger btn-confirm-order">Xác nhận huỷ đơn hàng</button>
                                        </form>
                                    </div>
                                    <div class="flexbox-auto-right pl-1">
                                        <a href="{{ route('order.index') }}" class="btn btn-secondary">Huỷ</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="flexbox-layout-section-secondary mt20">
                    <div class="ui-layout__item">
                        <div class="wrapper-content mb20">
                            <div class="next-card-section p-none-b">
                                <div class="flexbox-grid-default flexbox-align-items-center">
                                    <div class="flexbox-auto-content-left">
                                        <label class="title-product-main text-no-bold">Thông tin khách hàng</label>
                                    </div>
                                </div>
                            </div>
                            <div class="next-card-section border-none-t">
                                <div class="mb5">
                                    <strong class="text-capitalize">{{ $order->name }}</strong>
                                </div>
                                <div>
                                    <i class="fas fa-inbox mr5"></i>
                                    <span>{{ $total }}</span> Sản phẩm
                                </div>
                                <ul class="ws-nm text-infor-subdued">
                                    <li class="overflow-ellipsis">
                                        <i class="fas fa-envelope-open-text"></i>
                                        <a class="hover-underline" href="mailto:{{ $order->email }}">{{ $order->email }}</a>
                                    </li>
                                    <li class="overflow-ellipsis">
                                        <i class="fas fa-mobile-alt"></i>
                                        <a class="hover-underline" href="tel:{{ $order->phone }}">{{ $order->phone }}</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="next-card-section">
                                <div class="flexbox-grid-default flexbox-align-items-center">
                                    <div class="flexbox-auto-content-left">
                                        <label class="title-text-second">
                                            <strong>Thông tin thanh toán</strong>
                                        </label>
                                    </div>
                                </div>
                                <div>
                                    <ul class="ws-nm text-infor-subdued shipping-address-info">
                                        <li class="overflow-ellipsis">
                                            <i class="fab fa-amazon-pay"></i>
                                            <a class="hover-underline text-uppercase">{{ $order->payment_method }}</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="next-card-section">
                                <div class="flexbox-grid-default flexbox-align-items-center">
                                    <div class="flexbox-auto-content-left">
                                        <label class="title-text-second">
                                            <strong>Địa chỉ</strong>
                                        </label>
                                    </div>
                                </div>
                                <div>
                                    <ul class="ws-nm text-infor-subdued shipping-address-info">
                                        <p>
                                            {{ $order->address }}
                                        </p>
                                    </ul>
                                </div>
                            </div>
                        </div>
{{--                        <div class="wrapper-content bg-gray-white mb20">--}}
{{--                            <div class="pd-all-20">--}}
{{--                                <a href="{{ route('orders.reorder', ['order_id' => $order->id]) }}" class="btn btn-info">{{ trans('plugins/ecommerce::order.reorder') }}</a>&nbsp;--}}
{{--                                @if (!in_array($order->status, [\Botble\Ecommerce\Enums\OrderStatusEnum::CANCELED, \Botble\Ecommerce\Enums\OrderStatusEnum::COMPLETED]))--}}
{{--                                    <a href="#" class="btn btn-secondary btn-trigger-cancel-order" data-target="{{ route('orders.cancel', $order->id) }}">{{ trans('plugins/ecommerce::order.cancel') }}</a>--}}
{{--                                @endif--}}
{{--                            </div>--}}
{{--                        </div>--}}
                    </div>
                </div>
            </div>
        </div>
    </div>

{{--    @if ($order->status != \Botble\Ecommerce\Enums\OrderStatusEnum::CANCELED)--}}
{{--        {!! Form::modalAction('resend-order-confirmation-email-modal', trans('plugins/ecommerce::order.resend_order_confirmation'), 'info', trans('plugins/ecommerce::order.resend_order_confirmation_description', ['email' => $order->user->id ? $order->user->email : $order->address->email]), 'confirm-resend-confirmation-email-button', trans('plugins/ecommerce::order.send')) !!}--}}
{{--        {!! Form::modalAction('cancel-shipment-modal', trans('plugins/ecommerce::order.cancel_shipping_confirmation'), 'info', trans('plugins/ecommerce::order.cancel_shipping_confirmation_description'), 'confirm-cancel-shipment-button', trans('plugins/ecommerce::order.confirm')) !!}--}}
{{--        {!! Form::modalAction('update-shipping-address-modal', trans('plugins/ecommerce::order.update_address'), 'info', view('plugins/ecommerce::orders.shipping-address.form', ['address' => $order->address, 'orderId' => $order->id, 'url' => route('orders.update-shipping-address', $order->address->id ?? 0)])->render(), 'confirm-update-shipping-address-button', trans('plugins/ecommerce::order.update'), 'modal-md') !!}--}}
{{--        {!! Form::modalAction('cancel-order-modal', trans('plugins/ecommerce::order.cancel_order_confirmation'), 'info', trans('plugins/ecommerce::order.cancel_order_confirmation_description'), 'confirm-cancel-order-button', trans('plugins/ecommerce::order.cancel_order')) !!}--}}
{{--        {!! Form::modalAction('confirm-payment-modal', trans('plugins/ecommerce::order.confirm_payment'), 'info', trans('plugins/ecommerce::order.confirm_payment_confirmation_description', ['method' => $order->payment->payment_channel->label()]), 'confirm-payment-order-button', trans('plugins/ecommerce::order.confirm_payment')) !!}--}}
{{--        {!! Form::modalAction('confirm-refund-modal', trans('plugins/ecommerce::order.refund'), 'info', view('plugins/ecommerce::orders.refund.modal', ['order' => $order, 'url' => route('orders.refund', $order->id)])->render(), 'confirm-refund-payment-button', trans('plugins/ecommerce::order.refund') . ' <span class="refund-amount-text">' . format_price($order->payment->amount - $order->payment->refunded_amount) . '</span>') !!}--}}
{{--    @endif--}}
@stop
