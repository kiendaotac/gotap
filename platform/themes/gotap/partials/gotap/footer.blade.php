<footer class="tappi-footer relative pt-8 pb-6 white">
    <div class="flex flex-col flex-wrap items-center md:justify-between justify-center">
        <div class="w-1/2 md:w-4/12 px-4 mx-auto text-center">
            <img src="{{ RvMedia::getImageUrl(theme_option('logo')) }}" alt="{{ theme_option('title') }}">
        </div>
        <div class="w-full px-4 mx-auto text-center">
            <ul class="flex justify-center	">
                <li class="flex items-center">
                    <a class="lg:text-white lg:hover:text-gray-300 text-gray-800 px-3 py-4 lg:py-2 flex items-center text-xs uppercase font-bold" href="{{ theme_option('facebook') }}" target="_blank">
                        <i class="lg:text-gray-900 text-gray-900 fab fa-facebook text-lg leading-lg "></i>
                        <span class="lg:hidden inline-block ml-2">Facebook</span>
                    </a>
                </li>
                <li class="flex items-center">
                    <a class="lg:text-white lg:hover:text-gray-300 text-gray-800 px-3 py-4 lg:py-2 flex items-center text-xs uppercase font-bold" href="{{ theme_option('instagram') }}" target="_blank">
                        <i class="lg:text-gray-900 text-gray-900 fab fa-instagram text-lg leading-lg "></i>
                        <span class="lg:hidden inline-block ml-2">Instagram</span>
                    </a>
                </li>
                <li class="flex items-center">
                    <a class="lg:text-white lg:hover:text-gray-300 text-gray-800 px-3 py-4 lg:py-2 flex items-center text-xs uppercase font-bold" href="{{ theme_option('tiktok') }}" target="_blank">
                        <i class="lg:text-gray-900 text-gray-900 fab fa-tiktok text-lg leading-lg "></i>
                        <span class="lg:hidden inline-block ml-2">TikTok</span>
                    </a>
                </li>
                <li class="flex items-center">
                    <a class="lg:text-white lg:hover:text-gray-300 text-gray-800 px-3 py-4 lg:py-2 flex items-center text-xs uppercase font-bold" href="{{ theme_option('youtube') }}" target="_blank">
                        <i class="lg:text-gray-900 text-gray-900 fab fa-youtube text-lg leading-lg "></i>
                        <span class="lg:hidden inline-block ml-2">Youtube</span>
                    </a>
                </li>
            </ul>
        </div>
        <div class="flex flex-wrap items-center md:justify-between justify-center">
            <div class="w-full px-4 mx-auto text-center">
                <div class="text-sm text-gray-600 font-semibold py-1">
                    {{ theme_option('seo_title') }}
                </div>
            </div>
        </div>
    </div>
    <div class="container mx-auto px-4">
        <hr class="my-6 border-gray-400">
        <div class="flex flex-wrap items-center md:justify-between justify-center">
            <div class="w-full md:w-6/12 px-4 mx-auto text-center">
                <div class="text-sm text-gray-600 font-semibold py-1">
                    {{ theme_option('copyright') }}
                </div>
            </div>
        </div>
    </div>
</footer>