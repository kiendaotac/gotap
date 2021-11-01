<div id="page-transition"></div>
<div id="__next">
    <div class="relative max-w-3xl m-auto layout-with-bottom-menu">
        <div class="md:px-10 mx-auto w-full">
            <div class="relative bg-white max-w-3xl m-auto">
                <div class="profile-detail mt-4 px-2">
                    <div class="profile-box flex items-center justify-between flex-wrap">
                        <div class="user-profile-info flex items-center mb-2">
                            <div class="mr-4 h-20 w-20">
                                <img src="{{ $user->account->avatar ? RvMedia::getImageUrl($user->account->avatar) : RvMedia::getImageUrl('avatars/default-avatar.png') }}" alt="avatar" class="rounded-full"></div>
                            <div class="info">
                                <div class="flex items-center">
                                    <strong>{{ $user->account->fullname }}</strong> &nbsp;
                                    <div class="verified-account">
                                        <img src="{{ Theme::asset()->url('layoutone/assets/images/icons/verified.png') }}" alt="verified">
                                    </div>
                                </div>
                                <div class="text-muted ">
                                    <i class="fas fa-map-marker-alt"></i>
                                    &nbsp;{{ $user->account->address }}
                                </div>
                            </div>
                        </div>
                        <div class="edit-profile-button flex flex-col">
                            <a href="{{ route('public.member.profile.edit') }}" class="text-blue-500 bg-transparent border border-solid border-blue-500 font-bold text-sm px-4 py-1 rounded outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150" type="button">
                                <i class="fas fa-edit mr-1"></i>
                                {{ __('Edit Profile') }}
                            </a>
                            <a href="{{ route('public.member.profile.social') }}" class="text-white bg-blue-500 border border-solid border-blue-500 font-bold text-sm px-4 py-1 rounded outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150" type="button">
                                <i class="fas fa-link"></i>
                                {{ __('Edit Link Social') }}
                            </a>
                        </div>
                    </div>
                    <div class="bio py-2 whitespace-pre-line">{{ $user->account->description }}</div>
                    <div class="stats py-2">
                        <div class="flex justify-around text-center border-t border-b border-gray-300 py-2">
                            <div class="flex flex-col">
                                <span class="text-gray-700">{{ __('View') }}</span>
                                <strong>{{ $user->account->view }}</strong>
                            </div>
                            <div class="flex flex-col">
                                <span class="text-gray-700">{{ __('Tap') }}</span>
                                <strong>{{ $user->account->tap }}</strong>
                            </div>
                            <div class="flex flex-col">
                                <span class="text-gray-700">{{ __('Click') }}</span>
                                <strong>{{ $user->account->click }}</strong>
                            </div>
                        </div>
                    </div>
                    <div class="profile-button flex text-center justify-around py-2">
                        <div class="action-button">
                            <a href="#" class="block w-32 bg-blue-500 active:bg-blue-700 text-white font-semibold hover:shadow-md shadow text-sm px-3 py-0/3 rounded outline-none focus:outline-none sm:mr-2 mb-1 ease-linear transition-all duration-150">
                                {{ __('Contacts') }}
                            </a>
                        </div>
                    </div>
                    <div class="divider border-t mt-2 border-gray-300"></div>
                </div>
                <div class="py-8 mx-6 text-center">
                    <div class="flex flex-wrap justify-center">
                        <div class="w-full lg:w-9/12">
                            @foreach($user->account->items as $item)
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
                                                    <h5 class="text-gray-700 m-auto font-bold text-base">{{ $item->name ? $item->name : $item->social->name }}</h5>
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
            {!! Theme::partial('gotap.menu-bottom') !!}
        </div>
    </div>
</div>