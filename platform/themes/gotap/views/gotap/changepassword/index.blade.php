<div id="page-transition"></div>
<div id="__next">
    <div class="flex-wrap max-w-3xl m-auto">
        <div class="topbar-action-wrapper border-b bg-white z-50">
            <div class="topbar-action flex justify-between items-center px-4 py-2">
                <div class="topbar-action-back cursor-pointer w-8">
                    <a href="{{ route('public.member.profile.general.index') }}">
                        <i class="text-blue-500 fas fa-arrow-left"></i>
                    </a>
                </div>
                <div class="topbar-action-name font-bold">
                    <span>{{ __('Change Password') }}</span>
                </div>
                <div class="topbar-action-save w-12"></div>
            </div>

        </div>
        @if(Session::has('success'))
            <div class="flex justify-between items-center px-4 py-2">
                <small class="block text-lg leading-normal mt-0 mb-4 text-success">{{ Session::get('success') }}</small>
            </div>
        @endif
        <div class="w-full py-6">
            <form action="{{ route('public.member.profile.changepassword.store') }}" method="POST">
                @csrf
                <div class="flex flex-wrap justify-center">
                    <div class="w-full px-4">
                        <small class="block font-normal leading-normal mb-4 text-warning"></small>
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2" for="grid-password">
                                {{ __('Password') }}
                            </label>
                            <input name="password" type="password" class="px-3 py-3 border placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" value="">
                            @if($errors->has('password'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('password') }}</small>
                            @endif
                        </div>
                    </div>
                    <div class="w-full px-4">
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">
                                {{ __('New Password') }}
                            </label>
                            <input name="newpassword" type="password" class="px-3 py-3 border placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" value="">
                            @if($errors->has('newpassword'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('newpassword') }}</small>
                            @endif
                        </div>
                    </div>
                    <div class="w-full px-4">
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">
                                {{ __('Confirm Password') }}
                            </label>
                            <input name="newpassword_confirmation" type="password" class="px-3 py-3 border placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" value="">
                            @if($errors->has('newpassword_confirmation'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('newpassword_confirmation') }}</small>
                            @endif
                        </div>
                    </div>
                    <div class="w-full px-4">
                        <button class="bg-blue-500 active:bg-blue-500 text-white font-bold uppercase text-xs px-4 py-2 rounded shadow hover:shadow-md outline-none focus:outline-none mr-1 ease-linear transition-all duration-150 " type="submit">
                            {{ __('Save') }}
                        </button>
                    </div>
                </div>
            </form>
            {!! Theme::partial('gotap.menu-bottom') !!}
        </div>
    </div>
</div>
