<div class="container mx-auto px-4 h-full">
    <div class="flex content-center items-center justify-center h-full">
        <div class="w-full lg:w-6/12 px-4">
            <div class="relative flex flex-col min-w-0 break-words w-full mb-6 shadow-lg rounded-lg bg-gray-300 border-0">
                <div class="rounded-t mb-0 px-6 py-6">
                    <div class="text-center mb-3"><h6 class="text-gray-600 text-xl font-bold">{{ __('Register') }}</h6></div>
                    <hr class="mt-6 border-b-1 border-gray-400">
                </div>
                <div class="flex-auto px-4 lg:px-10 py-10 pt-0">
                    <form action="{{ route('public.member.register.post') }}" method="post">
                        @csrf
                        <div class="inline-flex justify-between w-full">
                            <div class="relative w-6/12 mb-3 pr-2">
                                <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('First Name') }}</label>
                                <input name="first_name" type="text" class="px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" placeholder="{{ __('First Name') }}" value="{{ old('first_name') }}">
                                @if($errors->has('first_name'))
                                    <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('first_name') }}</small>
                                @endif
                            </div>
                            <div class="relative w-6/12 mb-3 pl-2">
                                <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Last Name') }}</label>
                                <input name="last_name" type="text" class="px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" placeholder="{{ __('Last Name') }}" value="{{ old('last_name') }}">
                                @if($errors->has('last_name'))
                                    <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('last_name') }}</small>
                                @endif
                            </div>
                        </div>
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Email') }}</label>
                            <input name="email" type="email" class="px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" placeholder="{{ __('Email') }}" value="{{ old('email') }}">
                            @if($errors->has('email'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('email') }}</small>
                            @endif
                        </div>
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Card number') }}</label>
                            <input name="uuid" type="text" class="px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" placeholder="{{ __('Card number') }}" value="{{ old('uuid') ?? session('uuid') }}">
                            @if($errors->has('uuid'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('uuid') }}</small>
                            @endif
                        </div>
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Card code') }}</label>
                            <input name="code" type="text" class="px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" placeholder="{{ __('Card code') }}" value="">
                            @if($errors->has('code'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('code') }}</small>
                            @endif
                        </div>
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Password') }}</label>
                            <input name="password" type="password" class="px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" placeholder="{{ __('Password') }}" value="">
                            @if($errors->has('password'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('password') }}</small>
                            @endif
                        </div>
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2">{{ __('Password Confirmation') }}</label>
                            <input name="password_confirmation" type="password" class="px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" placeholder="{{ __('Password Confirmation') }}" value="">
                            @if($errors->has('password_confirmation'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('password_confirmation') }}</small>
                            @endif
                        </div>
                        <div>
                            <label class="inline-flex items-center cursor-pointer">
                                <input {{ old('remember') ?: 'checked'  }} id="customCheckLogin" type="checkbox" class="form-checkbox text-gray-800 ml-1 w-5 h-5 ease-linear transition-all duration-150" required>
                                <span class="ml-2 text-sm font-semibold text-gray-700">
                                    {{ __('I agree with the') }}
                                    <a href="#pablo" class="text-blue-500">{{ __('Privacy Policy') }}</a>
                                </span>
                            </label>
                        </div>
                        <div class="text-center mt-6">
                            <button class="flex justify-center bg-gray-900 text-white active:bg-gray-700 text-sm font-bold uppercase px-6 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 w-full ease-linear transition-all duration-150 " type="submit">
                                <span class="button-text">{{ __('Register') }}</span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="flex flex-wrap mt-6 relative">
                <div class="w-1/2">
                    <a href="{{ route('public.member.login') }}" class="text-gray-300 ml-1">
                        <small>{{ __('Login') }}</small>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>