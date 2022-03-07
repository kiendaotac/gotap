<div id="page-transition"></div>
<style>
    #bg {
        background: url('{{ $account->cover ? RvMedia::getImageUrl($account->cover) : RvMedia::getImageUrl(theme_option('default-cover'))}}') no-repeat center center fixed !important;
        -webkit-background-size: cover !important;
        -moz-background-size: cover !important;
        -o-background-size: cover !important;
        background-size: cover !important;
    }
</style>
<div id="__next">
    <main class="profile-page">
        <div class="profile-type-1 max-w-3xl m-auto" id="bg">
            <div class="profile-cover h-44 bg-cover"></div>
            <div class="rounded-t-lg mx-4 bg-white bg-opacity-50 profile-detail">
                <div class="profile-box">
                    <div class="user-profile-info items-center -mb-5">
                        <div class="profile-avatar h-32 w-32 m-auto relative -top-14 rounded-full">
                            <img width="200"
                                 src="{{ $account->avatar ? RvMedia::getImageUrl($account->avatar) : RvMedia::getImageUrl(theme_option('default-avatar'))}}"
                                 class="rounded-full">
                        </div>
                        <div class="info text-center mt-4 -top-14 relative">
                            <div class="text-2xl flex justify-center items-center">
                                @if($account->fullname)
                                    <strong>{{ $account->fullname }} &nbsp;</strong>
                                    <div class="verified-account">
                                        <img src="{{ Theme::asset()->url('layoutone/assets/images/icons/verified.png') }}"
                                             alt="verified">
                                    </div>
                                @endif
                            </div>
                            <div class="bio py-2 whitespace-pre-line text-center">{{ $account->description }}</div>
                            <div class="text-muted ">
                                @if($account->address)
                                    <i class="fas fa-map-marker-alt"></i>
                                    &nbsp;{{ $account->address }}
                                @endif
                            </div>
                            <div class="stats py-2">
                                <div class="flex justify-around text-center border-t border-b border-gray-900 py-2">
                                    <div class="flex flex-col"><span class="text-gray-900">View</span><strong>{{ $account->view }}</strong></div>
                                    <div class="flex flex-col"><span class="text-gray-900">Tap</span><strong>{{ $account->tap }}</strong></div>
                                    <div class="flex flex-col"><span class="text-gray-900">Click</span><strong>{{ $account->click }}</strong></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="rounded-b-lg mx-4 bg-white bg-opacity-50 pb-4 profile-app-link grid grid-cols-3 gap-4 justify-items-center mt-5 mx-2 mb-6 min-35-vh">
                    @foreach($account->items as $item)
                        <div @if($item->social->is_bank) class="link-item is_bank" @else class="link-item is_social" @endif data-social='{{ $item }}' >
                            <div class="flex flex-col">
                                <a class="w-28 m-auto">
                                    <img src="{{ $item->social->icons->first() ? RvMedia::getImageUrl($item->social->icons->first()->image) : RvMedia::getDefaultImage() }}" alt="img"
                                         class="image img-fluid">
                                </a>
                                <span class="text-center font-medium text-gray-800 mt-1">{{ $item->name ?? $item->social->name }}</span>
                            </div>
                        </div>
                    @endforeach
                </div>
            <div class="modal-bank hidden fixed inset-0 w-full h-full z-50 bg-black bg-opacity-50 duration-300 overflow-y-auto">
                <div class="relative sm:w-3/4 md:w-3/4 lg:w-1/2 mx-8 sm:mx-auto mt-72 mb-24 opacity-100">
                    <div class="relative bg-white shadow-lg rounded-lg text-gray-900 z-20">
                        <div class="topbar-action border-b flex justify-between items-center px-4 py-2">
                            <div class="topbar-action-select w-8"></div>
                            <div class="topbar-action-name font-bold">
                                <span id="bank"></span>
                            </div>
                            <div class="close-modal-bank topbar-action-back ml-4 cursor-pointer w-8">
                                <i class="fas fa-window-close text-2xl"></i>
                            </div>
                        </div>
                        <div class="mb-6 mt-4">
                            <div class="relative flex flex-col min-w-0 break-words bg-white mb-6 pb-4">
                                <div class="flex px-4 py-1 flex-auto items-center">
                                    <div class="relative w-full pl-1 m-auto max-w-full flex-grow flex-1">
                                        <div class="flex">
                                            <div class="m-auto">
                                                <h5 class="text-gray-600 uppercase font-bold text-xs" id="name">
                                                </h5>
                                                <h5 class="bank-number text-gray-700 font-semibold text-base" id="card">
                                                </h5>
                                            </div>
                                            <button class="copy-button block w-28 bg-gray-800 active:bg-gray-700 text-white font-semibold hover:shadow-2xl shadow-xl text-sm px-3 py-0/3 rounded outline-none focus:outline-none ease-linear transition-all duration-150" type="button">
                                                <div class="copied-text">
                                                    <i class="fas fa-check"></i>
                                                    <span>Đã Copy</span>
                                                </div>
                                                <div class="copy-text">
                                                    <i class="far fa-clone"></i>
                                                    <span>Copy STK</span>
                                                </div>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {!! Theme::partial('gotap.footer') !!}
        </div>
    </main>
</div>
