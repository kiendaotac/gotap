<footer class="absolute w-full bottom-0 bg-gray-900 pb-6">
    <div class="container mx-auto px-4">
        <hr class="mb-6 border-b-1 border-gray-700"/>
        <div class="flex flex-wrap items-center md:justify-between justify-center">
            <div class="w-full md:w-4/12 px-4">
                <div class="text-sm text-gray-600 font-semibold py-1 text-center md:text-left">
                    <a href="{{ route('public.single') }}" class="text-gray-400 hover:text-gray-400 text-sm font-semibold py-1">{{ theme_option('copyright') }}</a>
                </div>
            </div>
            <div class="w-full md:w-8/12 px-4">
                <ul class="flex flex-wrap list-none md:justify-end  justify-center">
                    <li>
                        <a href="{{ route('public.single') }}" class="text-white hover:text-gray-400 text-sm font-semibold block py-1 px-3">{{ theme_option('site_title') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('public.single') }}/#section-about" class="text-white hover:text-gray-400 text-sm font-semibold block py-1 px-3">{{ __('About Us') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('public.single') }}" class="text-white hover:text-gray-400 text-sm font-semibold block py-1 px-3">{{ __('Contact') }}</a>
                    </li>
                    <li>
                        <a href="{{ route('public.single') }}" class="text-white hover:text-gray-400 text-sm font-semibold block py-1 px-3">{{ __('Shop') }}</a>
                    </li>
                    <li>
                        <span class="text-white hover:text-gray-400 text-sm font-semibold block py-1 px-3">{{ __('Language') }}</span>
                    </li>
                    <li style="margin-top: -5px">
                        {!! apply_filters('language_switcher') !!}
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>