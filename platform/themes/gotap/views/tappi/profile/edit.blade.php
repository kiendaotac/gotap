<div id="__next">
    <form action="{{ route('public.member.profile.update') }}" method="POST">
        @csrf
        <div class="flex-wrap max-w-3xl m-auto">
            <div class="topbar-action-wrapper border-b bg-white z-50">
                <div class="topbar-action flex justify-between items-center px-4 py-2">
                    <div class="topbar-action-back cursor-pointer w-8">
                        <a href="{{ route('public.member.profile.index') }}">
                            <i class="text-blue-500 fas fa-arrow-left"></i>
                        </a>
                    </div>
                    <div class="topbar-action-name font-bold"><span>Chỉnh sửa trang cá nhân: {{ $user->account->fullname }}</span></div>
                    <div class="topbar-action-save">
                        <button class="bg-blue-500 text-white active:bg-blue-600 font-bold uppercase text-xs px-4 py-2 rounded shadow hover:shadow-md outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150 " type="submit">
                            <span class="button-text">{{ __('Save') }}</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="flex flex-wrap justify-center">
                <div class="w-full px-4 mt-24 flex justify-center">
                    <div class="relative">
                        <div class="flex jss232 edit-profile-avatar profile-img shadow-xl rounded-full h-auto align-middle border-none absolute -m-16 lg:-ml-16 max-w-150-px">
                            <input name="avatar" value="{{ $user->account->avatar ?: theme_option('default-avatar') }}" type="text" id="file" accept="image/*" autocomplete="off" tabindex="-1" style="display: none;">
                            <img alt="avatar" class="css-1o50j9g" src="{{ $user->account->avatar ? RvMedia::getImageUrl($user->account->avatar) : RvMedia::getImageUrl(theme_option('default-avatar')) }}">
                            <div class="jss234 jss235 cc_pointer">
                                <svg xmlns="http://www.w3.org/2000/svg" focusable="false" class="css-30i8ss" width="1em" height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24" style="transform: rotate(360deg);">
                                    <path d="M3 8c0 .55.45 1 1 1s1-.45 1-1V6h2c.55 0 1-.45 1-1s-.45-1-1-1H5V2c0-.55-.45-1-1-1s-1 .45-1 1v2H1c-.55 0-1 .45-1 1s.45 1 1 1h2v2z" fill="currentColor"></path>
                                    <circle cx="13" cy="14" r="3" fill="currentColor"></circle>
                                    <path d="M21 6h-3.17l-1.24-1.35A1.99 1.99 0 0 0 15.12 4h-6.4c.17.3.28.63.28 1c0 1.1-.9 2-2 2H6v1c0 1.1-.9 2-2 2c-.37 0-.7-.11-1-.28V20c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-8 13c-2.76 0-5-2.24-5-5s2.24-5 5-5s5 2.24 5 5s-2.24 5-5 5z" fill="currentColor"></path>
                                </svg>
                                <span class="MuiTypography-root MuiTypography-caption MuiTypography-colorInitial MuiTypography-alignInherit MuiTypography-displayBlock css-fzl7v-MuiTypography-root">{{ __('Update photo') }}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mt-28">
                <div class="mt-2 text-center">
                    <a class="text-blue-500 -ml-4" target="_blank" href="{{ $user->account->username ? route('public.member.user.index', ['username'=>$user->account->username]) : '' }}">{{ $user->account->username ? route('public.member.user.index', ['username'=>$user->account->username]) : '' }}</a></div>
                <div class="px-4 mt-2 border-t border-gray-300">
                    <small class="block font-normal leading-normal mb-4 text-warning"></small>
                </div>
                <div class="mt-4 flex flex-wrap justify-center">
                    <div class="w-full px-4">
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2" for="grid-password">{{ __('Full Name') }}</label>
                            <input name="fullname" type="text" class="px-3 py-3 border placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" value="{{ $user->account->fullname }}">
                            @if($errors->has('fullname'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('fullname') }}</small>
                            @endif
                        </div>
                    </div>
                    <div class="w-full px-4">
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Username') }}</label>
                            <input name="username" type="text" class="px-3 py-3 border placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" value="{{ $user->account->username }}">
                            @if($errors->has('username'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('username') }}</small>
                            @endif
                        </div>
                    </div>
                    <div class="w-full px-4">
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Description') }}</label>
                            <textarea name="description" class="resize-y border px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150">{{ $user->account->description }}</textarea>
                            @if($errors->has('description'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('description') }}</small>
                            @endif
                        </div>
                    </div>
                    <div class="w-full px-4">
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Address') }}</label>
                            <textarea name="address" class="resize-y border px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150">{{ $user->account->address }}</textarea>
                            @if($errors->has('address'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('address') }}</small>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>