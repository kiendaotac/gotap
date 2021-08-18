<ul {!! $options !!}>
    @foreach ($menu_nodes as $key => $row)
        <li class="menu-item {{ $row->css_class }} @if ($row->url == Request::url()) current @endif">
            <a href="{{ $row->url }}" class="menu-link" target="{{ $row->target }}" data-href="{{ $row->css_class }}">
                <i class='{{ trim($row->icon_font) }}'></i>
                <div>{{ $row->name }}</div>
            </a>
            {{--@if ($row->has_child)
                {!! Menu::generateMenu([
                    'slug' => $menu->slug,
                    'parent_id' => $row->id
                ]) !!}
            @endif--}}
        </li>
    @endforeach
{{--    <li class="menu-item">
        <a href="#" class="menu-link" data-href="#wrapper">
            <div>Home</div>
        </a>
    </li>
    <li class="menu-item">
        <a href="#" class="menu-link" data-href="#section-about">
            <div>About</div>
        </a>
    </li>
    <li class="menu-item">
        <a href="#" class="menu-link" data-href="#section-works">
            <div>Works</div>
        </a>
    </li>
    <li class="menu-item">
        <a href="#" class="menu-link" data-href="#section-services">
            <div>Services</div>
        </a>
    </li>
    <li class="menu-item">
        <a href="#" class="menu-link" data-href="#section-blog">
            <div>Blog</div>
        </a>
    </li>
    <li class="menu-item">
        <a href="#" class="menu-link" data-href="#section-contact">
            <div>Contact</div>
        </a>
    </li>--}}
</ul>