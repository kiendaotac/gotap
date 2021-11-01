<style>
    @media only screen and (min-width: 600px) {
        .profile-cover.h-44.bg-cover {
            height: 15rem;
        }
    }
</style>
<div id="page-transition"></div>
<div id="__next">
    <input type="file" name="image-cover" class="image-cover" accept="image/*" autocomplete="off" tabindex="-1" style="display: none;">
    <input type="file" name="image" class="image hidden" accept="image/*">
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
                    <div class="topbar-action-name font-bold">
                        <span>{{ __('Edit Profile') }}: {{ $user->account->fullname }}</span></div>
                    <div class="topbar-action-save">
                        <button class="bg-blue-500 text-white active:bg-blue-600 font-bold uppercase text-xs px-4 py-2 rounded shadow hover:shadow-md outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150 "
                                type="submit">
                            <span class="button-text">{{ __('Save') }}</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="profile-cover h-44 bg-cover relative"
                 style="background-image: url('{{ $user->account->cover ? RvMedia::getImageUrl($user->account->cover) : RvMedia::getImageUrl(theme_option('default-cover'))}}');">
                <div class="edit-profile-button absolute bottom-0 right-0">
                    <input name="cover" value="{{ $user->account->cover ?: theme_option('default-cover') }}"
                           type="text" autocomplete="off" tabindex="-1" style="display: none;">
                    <button name="btn-edit-cover" class="text-white border border-solid border-white font-bold text-sm px-4 py-1 rounded outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150" type="button">
                        <i class="fa fa-camera mr-1"></i>
                        {{ __('Edit') }}
                    </button>
                </div>
            </div>
            <div class="flex flex-wrap justify-center">
                <div class="w-full px-4 flex justify-center">
                    <div class="relative">
                        <div class="flex jss232 edit-profile-avatar profile-img shadow-xl rounded-full h-auto align-middle border-none absolute -m-16 lg:-ml-16 max-w-150-px">
                            <input name="avatar" value="{{ $user->account->avatar ?: theme_option('default-avatar') }}"
                                   type="text" id="file" autocomplete="off" tabindex="-1" style="display: none;">
                            <img alt="avatar" id="avatar" class="css-1o50j9g"
                                 src="{{ $user->account->avatar ? RvMedia::getImageUrl($user->account->avatar) : RvMedia::getImageUrl(theme_option('default-avatar')) }}">
                            <div class="jss234 jss235 cc_pointer">
                                <svg xmlns="http://www.w3.org/2000/svg" focusable="false" class="css-30i8ss" width="1em"
                                     height="1em" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"
                                     style="transform: rotate(360deg);">
                                    <path d="M3 8c0 .55.45 1 1 1s1-.45 1-1V6h2c.55 0 1-.45 1-1s-.45-1-1-1H5V2c0-.55-.45-1-1-1s-1 .45-1 1v2H1c-.55 0-1 .45-1 1s.45 1 1 1h2v2z"
                                          fill="currentColor"></path>
                                    <circle cx="13" cy="14" r="3" fill="currentColor"></circle>
                                    <path d="M21 6h-3.17l-1.24-1.35A1.99 1.99 0 0 0 15.12 4h-6.4c.17.3.28.63.28 1c0 1.1-.9 2-2 2H6v1c0 1.1-.9 2-2 2c-.37 0-.7-.11-1-.28V20c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V8c0-1.1-.9-2-2-2zm-8 13c-2.76 0-5-2.24-5-5s2.24-5 5-5s5 2.24 5 5s-2.24 5-5 5z"
                                          fill="currentColor"></path>
                                </svg>
                                <span class="MuiTypography-root MuiTypography-caption MuiTypography-colorInitial MuiTypography-alignInherit MuiTypography-displayBlock css-fzl7v-MuiTypography-root text-center">{{ __('Update avatar') }}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- This example requires Tailwind CSS v2.0+ -->
            <div class="fixed z-10 inset-0 overflow-y-auto modal hidden" aria-labelledby="modal-title" role="dialog"
                 aria-modal="true">
                <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
                    <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>
                    <!-- This element is to trick the browser into centering the modal contents. -->
                    <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
                    <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
                        <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                            <div class="sm:flex sm:items-start">
                                <div class="img-container">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <img id="image"
                                                 src="{{ RvMedia::getImageUrl(theme_option('default-avatar')) }}"
                                                 alt="Default avatar">
                                        </div>
                                        <div class="col-md-4">
                                            <div class="preview"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                            <button name="crop" type="button"
                                    class="mt-3 w-full inline-flex justify-center rounded-md border border-transparent shadow-sm px-4 py-2 bg-red-600 text-base font-medium text-white hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 sm:ml-3 sm:w-auto sm:text-sm">
                                {{ __('Ok') }}
                            </button>
                            <button name="cancel" type="button"
                                    class="mt-3 w-full inline-flex justify-center rounded-md border border-gray-300 shadow-sm px-4 py-2 bg-white text-base font-medium text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 sm:mt-0 sm:ml-3 sm:w-auto sm:text-sm">
                                {{ __('Cancel') }}
                            </button>
                        </div>
                    </div>
                </div>
            </div>

            <div class="mt-28">
                <div class="mt-2 text-center">
                    <a class="text-blue-500 -ml-4" target="_blank"
                       href="{{ $user->account->username ? route('public.member.user.index', ['username'=>$user->account->username]) : '' }}">{{ $user->account->username ? route('public.member.user.index', ['username'=>$user->account->username]) : '' }}</a>
                </div>
                <div class="px-4 mt-2 border-t border-gray-300">
                    <small class="block font-normal leading-normal mb-4 text-warning"></small>
                </div>
                <div class="mt-4 flex flex-wrap justify-center">
                    <div class="w-full px-4">
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2"
                                   for="grid-password">{{ __('Full Name') }}</label>
                            <input name="fullname" type="text"
                                   class="px-3 py-3 border placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150"
                                   value="{{ $user->account->fullname }}">
                            @if($errors->has('fullname'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('fullname') }}</small>
                            @endif
                        </div>
                    </div>
                    <div class="w-full px-4">
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Username') }}</label>
                            <input name="username" type="text"
                                   class="px-3 py-3 border placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150"
                                   value="{{ $user->account->username }}">
                            @if($errors->has('username'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('username') }}</small>
                            @endif
                        </div>
                    </div>
                    <div class="w-full px-4">
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Description') }}</label>
                            <textarea name="description"
                                      class="resize-y border px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150">{{ $user->account->description }}</textarea>
                            @if($errors->has('description'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('description') }}</small>
                            @endif
                        </div>
                    </div>
                    <div class="w-full px-4">
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Address') }}</label>
                            <textarea name="address"
                                      class="resize-y border px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150">{{ $user->account->address }}</textarea>
                            @if($errors->has('address'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('address') }}</small>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <input type="hidden" name="url" value="{{ route('public.member.profile.avatar.store') }}">
    <input type="hidden" name="url-cover" value="{{ route('public.member.profile.cover.store') }}">
</div>
{!! Theme::partial('gotap.footer') !!}