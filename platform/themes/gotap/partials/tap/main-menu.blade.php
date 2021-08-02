<ul {!! clean($options) !!}>
    @foreach ($menu_nodes as $key => $row)
    <li class="@if(!($row->parent_id != 0 && $row->has_child)) nav-item @endif @if ($row->has_child) dropdown @endif">
        <a class="@if($row->parent_id == 0) nav-link @endif @if ($row->has_child) dropdown-toggle @endif @if($row->parent_id != 0) dropdown-item @endif" href="{{ $row->url }}" target="{{ $row->target }}">
            @if ($row->icon_font)<i class='{{ trim($row->icon_font) }}'></i> @endif{{ $row->title }}
        </a>
        @if ($row->has_child)
            {!!
                Menu::generateMenu([
                    'menu'       => $menu,
                    'menu_nodes' => $row->child,
                    'view'       => 'tap.main-menu',
                    'options'    => ['class' => 'dropdown-menu'],
                ])
            !!}
        @endif
    </li>
    @endforeach
</ul>