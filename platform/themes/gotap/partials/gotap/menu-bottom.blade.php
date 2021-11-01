<div data-menu-state="general" class="appBottomMenu">
    <div class="item {{ \Illuminate\Support\Facades\Route::currentRouteName() === 'public.member.profile.layout.index' ? 'active' : '' }}">
        <a href="{{ route('public.member.profile.layout.index') }}">
            <p>
                <i class="fas fa-palette"></i>
                <span>{{ __('Theme') }}</span>
            </p>
        </a>
    </div>
    <div class="item {{ \Illuminate\Support\Facades\Route::currentRouteName() === 'public.member.profile.index' ? 'active' : '' }}">
        <a href="{{ route('public.member.profile.index') }}">
            <p>
                <i class="far fa-user"></i>
                <span>{{ __('Profile') }}</span>
            </p>
        </a>
    </div>
    <div class="item {{ \Illuminate\Support\Facades\Route::currentRouteName() === 'public.member.profile.general.index' ? 'active' : '' }}">
        <a href="{{ route('public.member.profile.general.index') }}">
            <p>
                <i class="fas fa-bars"></i>
                <span>{{ __('General') }}</span>
            </p>
        </a>
    </div>
</div>