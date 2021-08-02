<div id="__next">
    <div class="flex-wrap bg-gray-200 h-screen max-w-3xl m-auto">
        <div class="topbar-action-wrapper border-b bg-white z-50">
            <div class="topbar-action flex justify-between items-center px-4 py-2">
                <div class="topbar-action-back cursor-pointer w-8">
                    <a href="{{ route('public.member.profile.index') }}">
                        <i class="text-blue-500 fas fa-arrow-left"></i>
                    </a>
                </div>
                <div class="topbar-action-name font-bold"><span>Chỉnh sửa liên kết</span></div>
                <div class="topbar-action-save">
                    <form name="socials" action="{{ route('public.member.profile.social.update.position') }}" method="post">
                        @method('put')
                        @csrf
                        <input type="hidden" name="socials" value="">
                    <button name="save-social" class="bg-blue-500 text-white active:bg-blue-600 font-bold uppercase text-xs px-4 py-2 rounded shadow hover:shadow-md outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150 " type="submit">
                        <span class="button-text">{{ __('Save') }}</span>
                    </button>
                    </form>
                </div>
            </div>
        </div>
        <div class="py-10 px-4 w-full">
            <div class="flex flex-wrap justify-center break-words bg-white w-full mb-6 shadow-xl rounded-lg py-4">
                <div class="drag-drop-area px-10 w-full">
                    <ul class="social-links sortable">
                        @if($user->account && $user->account->items)
                        @foreach($user->account->items as $item)
                        <li class="flex social" data-id="{{ $item->id }}">
                            <div class="w-full relative bg-white mb-6 social-card rounded-lg">
                                <div class="flex px-4 py-1 flex-auto items-center">
                                    <div class="text-white text-center inline-flex w-12 h-12">
                                        <img class="rounded-lg h-12" src="{{ RvMedia::getImageUrl($item->social->icon) }}" alt="{{ $item->social->name }}">
                                    </div>
                                    <div class="relative w-full pl-4 m-auto max-w-full flex-grow flex-1">
                                        <h5 class="text-gray-700 font-semibold m-auto text-base text-center">{{ $item->social->name }}</h5>
                                    </div>
                                    <div class="edit-social-item-button cursor-pointer pl-6 pr-1">
                                        <a href="{{ route('public.member.profile.social.edit', ['id' => $item->id]) }}">
                                            <i class="text-gray-600 fas fa-chevron-right"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        @endforeach
                        @endif
                    </ul>
                </div>
            </div>
            <a href="{{ route('public.member.profile.social.add') }}" class="text-center w-full bg-blue-500 text-white active:bg-blue-600 font-bold uppercase text-xs px-4 py-3 rounded shadow-xl hover:shadow-md outline-none focus:outline-none mr-1 mt-4 mb-1 ease-linear transition-all duration-150" type="button">
                <i class="fas fa-plus"></i>
                Thêm link mới
            </a>
        </div>
    </div>
</div>