<div id="page-transition"></div>
<div id="__next">
    <main class="profile-page">
        <div class="profile-type-1 max-w-3xl m-auto">
            <div class="profile-detail mt-4 px-2">
                <div class="profile-box flex items-center justify-center flex-wrap">
                    <div class="user-profile-info flex items-center mb-2 flex-col">
                        <div class="mr-4 h-20 w-20 mb-4">
                            <img src="{{ $account->avatar ? RvMedia::getImageUrl($account->avatar) : RvMedia::getImageUrl(theme_option('default-avatar'))}}"
                                 alt="avatar" class="rounded-full">
                        </div>
                        <div class="info">
                            <div class="flex items-center">
                                @if($account->fullname)
                                <div class="verified-account">
                                    <img src="{{ Theme::asset()->url('layoutone/assets/images/icons/verified.png') }}" alt="verified">
                                </div>
                                <strong>{{ $account->fullname }}</strong>
                                @endif
                            </div>
                            <div class="text-muted ">
                                @if($account->address)
                                <i class="fas fa-map-marker-alt pl-1 pr-1"></i>
                                    {{ $account->address }}
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bio py-2 whitespace-pre-line text-center">{{ $account->description }}</div>
                <div class="stats py-2">
                    <div class="flex justify-around text-center border-t border-b border-gray-300 py-2">
                        <div class="flex flex-col"><span class="text-gray-700">View</span><strong>{{ $account->view }}</strong></div>
                        <div class="flex flex-col"><span class="text-gray-700">Tap</span><strong>{{ $account->tap }}</strong></div>
                        <div class="flex flex-col"><span class="text-gray-700">Click</span><strong>{{ $account->click }}</strong></div>
                    </div>
                </div>
                <div class="profile-button flex text-center justify-around py-2">
                    <div class="action-button">
                        <a href="#" class="block w-32 bg-blue-500 active:bg-blue-700 text-white font-semibold hover:shadow-md shadow text-sm px-3 py-0/3 rounded outline-none focus:outline-none sm:mr-2 mb-1 ease-linear transition-all duration-150">
                            {{ __('Save contact') }}
                        </a>
                    </div>
                </div>
                <div class="divider border-t mt-2 border-gray-300"></div>
            </div>
            <div class="py-8 mx-6 text-center">
                <div class="flex flex-wrap justify-center">
                    <div class="w-full lg:w-9/12">
                        @foreach($account->items as $item)
                            @if($item->social->is_bank)
                                <div class="is_bank flip-card mb-6">
                                    <a class="bank-account">
                                        <div class="flip-card-inner">
                                            <div class="flip-card-front relative flex flex-col min-w-0 break-words bg-white mb-6 social-card rounded-lg">
                                                <div class="flex px-4 py-1 flex-auto items-center">
                                                    <div class="relative w-auto flex-initia h-12">
                                                        <div class="text-white text-center inline-flex items-center justify-center h-12">
                                                            <img class="h-12" src="{{ RvMedia::getImageUrl($item->social->icons->first()->image) }}">
                                                        </div>
                                                    </div>
                                                    <div class="relative w-full pl-1 m-auto max-w-full flex-grow flex-1">
                                                        <h5 class="text-gray-700 m-auto font-bold text-base uppercase">
                                                            {{ $item->social->name }}
                                                        </h5>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="flip-card-back relative flex flex-col min-w-0 break-words bg-white mb-6 social-card rounded-lg">
                                                <div class="flex px-4 py-1 flex-auto items-center">
                                                    <div class="relative w-full pl-1 m-auto max-w-full flex-grow flex-1">
                                                        <div class="flex">
                                                            <div class="m-auto">
                                                                <h5 class="text-gray-600 uppercase font-bold text-xs">
                                                                    {{ $item->name }}
                                                                </h5>
                                                                <h5 class="bank-number text-gray-700 font-semibold text-base">
                                                                    {{ $item->social_value }}
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
                                    </a>
                                </div>
                            @else
                                <div data-social='{{ $item }}' class="is_social relative flex flex-col min-w-0 break-words bg-white mb-6 social-card rounded-lg">
                                    <a>
                                        <div class="flex px-4 py-1 flex-auto items-center">
                                            <div class="relative w-auto flex-initial h-12 my-1">
                                                <div class="text-white text-center inline-flex items-center justify-center w-12 h-12">
                                                    <img class="h-12" src="{{ RvMedia::getImageUrl($item->social->icons->first()->image) }}">
                                                </div>
                                            </div>
                                            <div class="relative w-full pl-1 m-auto max-w-full flex-grow flex-1">
                                                <h5 class="text-gray-700 m-auto font-bold text-base">{{ $item->name ? : $item->social->name }}</h5>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            @endif
                        @endforeach
                    </div>
                </div>
            </div>
            {!! Theme::partial('gotap.footer') !!}
        </div>
    </main>
</div>