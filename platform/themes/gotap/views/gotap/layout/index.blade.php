<div id="page-transition"></div>
<div id="__next">
    <div class="flex-wrap max-w-3xl m-auto">
        <div class="flex flex-wrap justify-center">
            <div class="w-full md:w-3/4 px-4 mt-6 grid grid-cols-2 gap-4">
                @foreach($themes as $theme)
                <div class="layout-item p-2">
                    <div class="relative overflow-hidden">
                        @if($theme->id == $theme_id)
                        <div class="current-use">Current</div>
                        @endif
                            <form action="{{ route('public.member.profile.layout.update', ['id' => $theme->id]) }}" method="post">
                                @csrf
                                {{ method_field('put') }}
                                <button class="w-28 absolute bottom-6 center-absolute bg-blue-500 text-white active:bg-gray-600 font-semibold text-sm py-1 rounded-lg shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150" type="submit">Sử dụng</button>
                            </form>
                        <img class="rounded-lg" src="{{ RvMedia::getImageUrl($theme->image) }}" alt="{{ $theme->name }}" />
                    </div>
                    <div class="font-semibold mt-2 text-center">{{ $theme->name }}</div>
                </div>
                @endforeach
            </div>
            {!! Theme::partial('gotap.menu-bottom') !!}
        </div>
    </div>
</div>