<li class="dropdown dropdown-extended dropdown-inbox" id="header_inbox_bar">
    <a href="javascript:;" class="dropdown-toggle dropdown-header-name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <i class="icon-envelope-open"></i>
        <span class="badge badge-default"> {{ count($orders) }} </span>
    </a>
    <ul class="dropdown-menu dropdown-menu-right">
        <li class="external">
            <h3>{!! clean(trans('plugins/contact::contact.new_msg_notice', ['count' => count($orders)])) !!}</h3>
            <a href="{{ route('order.index') }}">Xem tất cả đơn hàng</a>
        </li>
        <li>
            <ul class="dropdown-menu-list scroller" style="height: {{ count($orders) * 70 }}px;" data-handle-color="#637283">
                @foreach($orders as $order)
                    <li>
                        <a href="{{ route('order.edit', $order->id) }}">
{{--                            <span class="photo">--}}
{{--                                <img src="{{ (new \Botble\Base\Supports\Avatar)->create($contact->name)->toBase64() }}" class="rounded-circle" alt="{{ $contact->name }}">--}}
{{--                            </span>--}}
                            <span class="subject"><span class="from"> {{ $order->qty }} </span><span class="time">{{ $order->created_at->diffForHuman() }} </span></span>
                            <span class="message"> {{ $order->phone }} - {{ $order->email }} </span>
                        </a>
                    </li>
                @endforeach
            </ul>
        </li>
    </ul>
</li>
