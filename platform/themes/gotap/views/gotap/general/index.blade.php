<div id="page-transition"></div>
<div id="__next">
    <div class="relative max-w-3xl m-auto layout-with-bottom-menu">
        <div class="md:px-10 mx-auto w-full">
            <div class="app-menu-option px-2 py-2">
                <div class="menu-option-header font-bold text-3xl mb-4 mt-2">{{ __('General') }}</div>
                <div class="list-view mt-2 text-lg">
                    <div class="list-view-header font-bold border-b py-4 px-2">Thông tin chung</div>
                    <div class="list-item flex py-2 px-2 items-center">
                        <div class="menu-icon mr-3"><i class="fas fa-book text-2xl text-gray-700"></i></div>
                        <div class="menu-text py-3 w-full font-semibold">
                            <a target="_blank" href="https://shop.tappi.vn/wp-content/uploads/2021/04/Huong-dan-them-link-mxh-cho-the-tappi.pdf">
                                Hướng dẫn lấy username App &amp; MXH
                            </a>
                        </div>
                    </div>
                    <div class="list-item flex py-2 px-2 items-center">
                        <div class="menu-icon mr-3"><i class="fas fa-qrcode text-2xl text-gray-700"></i></div>
                        <div class="menu-text py-3 w-full font-semibold">
                            <a target="_blank" href="{{ route('public.member.qr.index', ['uuid' => $user->account->uuid]) }}">
                                Download QR code
                            </a>
                        </div>
                    </div>
                </div>
                <div class="list-view mt-2 text-lg">
                    <div class="list-view-header font-bold border-b py-4 px-2">Cài đặt &amp; quyền riêng tư</div>
                    <div class="list-item flex py-2 px-2 items-center">
                        <div class="menu-icon mr-3">
                            <i class="fas fa-cogs text-2xl text-gray-700"></i>
                        </div>
                        <div class="menu-text py-3 w-full font-semibold">
                            <a href="{{ route('public.member.profile.changepassword.index') }}">{{ __('Change Password') }}</a>
                        </div>
                    </div>
                    <div class="list-item flex py-2 px-2 items-center">
                        <div class="menu-icon mr-3">
                            <i class="fas fa-language text-2xl text-gray-700"></i>
                        </div>
                        <div class="menu-text py-3 w-full font-semibold">
                            @if(Language::getCurrentLocaleCode() === 'vi')
                                <a rel="alternate" hreflang="en" href="{{ Language::getLocalizedURL('en') }}">
                                    <span>English</span>
                                </a>
                            @else
                                <a rel="alternate" hreflang="vi" href="{{ Language::getLocalizedURL('vi') }}">
                                    <span>Tiếng Việt</span>
                                </a>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="list-view cursor-pointer font-bold py-4 px-2 mt-1 items-center flex ">
                    <a href="{{ route('public.member.logout') }}">
                        <i class="fas fa-sign-out-alt text-2xl text-gray-700 mr-2"></i>
                        Đăng xuất
                    </a>
                </div>
            </div>
            {!! Theme::partial('gotap.menu-bottom') !!}
        </div>
    </div>
</div>