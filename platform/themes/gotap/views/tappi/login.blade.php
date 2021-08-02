<div class="container mx-auto px-4 h-full">
    <div class="flex content-center items-center justify-center h-full">
        <div class="w-full lg:w-4/12 px-4">
            <div class="relative flex flex-col min-w-0 break-words w-full mb-6 shadow-lg rounded-lg bg-gray-300 border-0">
                <div class="rounded-t mb-0 px-6 py-6">
                    <div class="text-center mb-3"><h6 class="text-gray-600 text-xl font-bold">Đăng nhập</h6>
                    </div>
                </div>
                <div class="flex-auto px-4 lg:px-10 py-10 pt-0">
                    <form method="POST" action="{{ route('public.member.login') }}">
                        @csrf
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2" for="grid-password">Email</label>
                            <input name="email" type="email" value="{{ old('email') }}" class="px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" placeholder="Email"/>
                            @if($errors->has('email'))
                                <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('email') }}</small>
                            @endif
                        </div>
                        <div class="relative w-full mb-3">
                            <label class="block uppercase text-gray-700 text-xs font-bold mb-2" for="grid-password">Mật khẩu</label>
                            <input name="password" type="password" value="" class="px-3 py-3 placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" placeholder="Password"/></div>
                            @if($errors->has('password'))
                            <small class="block font-normal leading-normal mt-0 mb-4 text-warning">{{ $errors->first('password') }}</small>
                            @endif
                        <div>
                            <label class="inline-flex items-center cursor-pointer">
                                <input name="remember" {{ old('remember') ? 'checked' : '' }} type="checkbox" id="customCheckLogin" class="form-checkbox text-gray-800 ml-1 w-5 h-5 ease-linear transition-all duration-150"/>
                                <span class="ml-2 text-sm font-semibold text-gray-700">Ghi nhớ đăng nhập</span>
                            </label>
                        </div>
                        <div class="text-center mt-6">
                            <button class="flex justify-center bg-gray-900 text-white active:bg-gray-700 text-sm font-bold uppercase px-6 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 w-full ease-linear transition-all duration-150 " type="submit">
                                <span class="button-text">Đăng nhập</span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="flex flex-wrap mt-6 relative">
                <div class="w-1/2">
                    <a href="{{ route('public.member.password.request') }}" class="text-gray-300">
                        <small>Quên mật khẩu?</small>
                    </a>
                </div>
                <div class="w-1/2 text-right">
                    <a href="{{ route('public.member.register') }}" class="text-gray-300">
                        <small>Tạo tài khoản mới</small>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>