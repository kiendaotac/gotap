<div id="page-transition"></div>
<div id="__next">
    <form action="{{ route('public.member.profile.social.update', ['id' => $item->id]) }}" method="POST">
        {{ method_field('put') }}
        @csrf
        <div class="flex-wrap max-w-3xl m-auto">
            <div class="topbar-action-wrapper border-b bg-white z-50">
                <div class="topbar-action flex justify-between items-center px-4 py-2">
                    <div class="topbar-action-back cursor-pointer w-8">
                        <a href="{{ route('public.member.profile.social') }}">
                            <i class="text-blue-500 fas fa-arrow-left"></i>
                        </a>
                    </div>
                    <div class="topbar-action-name font-bold">
                        <span>{{ __('Edit Social') }}</span>
                    </div>
                    <div class="topbar-action-save">
                        <button class="bg-blue-500 text-white active:bg-blue-600 font-bold uppercase text-xs px-4 py-2 rounded shadow hover:shadow-md outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150 " type="submit">
                            <span class="button-text">{{ __('Save') }}</span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="py-10 px-4 w-full bg-gray-200 h-screen">
                <div class="flex flex-wrap justify-center break-words bg-white w-full mb-6 shadow-xl rounded-lg py-4">
                    <div class="px-10 w-full">
                        <div class="text-gray-700 font-semibold m-auto text-base pb-2">{{ __('Preview') }}</div>
                        <div class="w-full relative bg-white mb-2 social-card rounded-lg">
                            <a target="_blank" href="">
                                <div class="flex px-4 py-2 flex-auto flex-wrap items-center">
                                    <div class="text-white text-center inline-flex w-10 h-10">
                                        <img class="rounded-lg" id="preview-icon" src="{{ RvMedia::getImageUrl($item->social->icons->first()->image) }}" alt="{{ $item->name }}">
                                    </div>
                                    <div class="relative w-full pl-4 m-auto max-w-full flex-grow flex-1">
                                        <h5 class="text-gray-700 font-semibold m-auto text-base" id="preview-name">{{ $item->name }}</h5>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="flex flex-wrap justify-center break-words bg-white w-full mb-6 shadow-xl rounded-lg py-4">
                    <div class="w-full px-4 border-b">
                        <div class="relative w-full mb-3 flex items-center justify-between">
                            <div class="relative w-full mb-3">
                                <label for="social" class="flex items-center cursor-pointer mb-2">
                                    <div class="block uppercase text-gray-700 text-xs font-bold text-gray-700">{{ __('Social') }}</div>
                                </label>
                                <select name="social_id" id="social" data-url="{{ RvMedia::url('/') }}" class="select-2 px-3 py-3 border placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150">
                                    @foreach($socials as $social)
                                        <option @if($social->id == $item->social->id) selected @endif value="{{ $social->id }}" data-source="{{ $social }}" data-icon="{{ $social->icons->first()->image }}">{{ $social->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="w-full px-4 mt-4">
                        <div class="relative w-full mb-3">
                            <label for="social_name" class="flex items-center cursor-pointer mb-2">
                                <div class="block uppercase text-gray-700 text-xs font-bold text-gray-700" id="label_social_name" data-label-social="{{ __('Display Name') }}" data-label-bank="{{ __('Card Name') }}">{{ __('Display Name') }}</div>
                            </label>
                            <div class="relative flex w-full flex-wrap items-stretch mb-3">
                                <input id="social_name" name="name" type="text" class="px-3 py-3 border placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" value="{{ old('name') ?: $item->name }}" placeholder="{{ __('Display Name') }}">
                                @if($errors->has('name'))
                                    <small class="block font-normal leading-normal mb-4 text-warning">{{ $errors->first('name') }}</small>
                                @endif
                            </div>
                        </div>
                        <div class="relative w-full mb-3">
                            <label for="social_value" class="flex items-center cursor-pointer mb-2">
                                <div class="block uppercase text-gray-700 text-xs font-bold text-gray-700" id="label_social_value" data-label-social="{{ __('Social Value') }}" data-label-bank="{{ __('Card Number') }}">{{ __('Social Value') }}</div>
                            </label>
                            <div class="relative flex w-full flex-wrap items-stretch mb-3">
                                <input id="social_value" name="social_value" type="text" class="px-3 py-3 border placeholder-gray-400 text-gray-700 bg-white rounded text-sm shadow focus:outline-none focus:shadow-outline w-full ease-linear transition-all duration-150" value="{{ old('social_value') ?: $item->social_value  }}" placeholder="https://">
                                @if($errors->has('social_value'))
                                    <small class="block font-normal leading-normal mb-4 text-warning">{{ $errors->first('social_value') }}</small>
                                @endif
                            </div>
                        </div>
                        <div class="relative w-full mb-3">
                            <label for="social" class="flex items-center cursor-pointer mb-2">
                                <div class="block uppercase text-gray-700 text-xs font-bold text-gray-700">{{ __('Example') }}</div>
                            </label>
                            <small id="hint" class="block font-normal leading-normal mb-4 text-success">{{ $item->social->hint }}</small>
                        </div>
                    </div>
                </div>
                <div class="float-right">
                    <button name="btn-delete" class="bg-red-500 text-white active:bg-blue-600 font-bold uppercase text-xs px-4 py-2 rounded shadow hover:shadow-md outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150 " type="button">
                        <span class="button-text">{{ __('Delete') }}</span>
                    </button>
                </div>
            </div>
            {!! Theme::partial('gotap.footer') !!}
        </div>
    </form>
</div>
<!-- This example requires Tailwind CSS v2.0+ -->
<div class="fixed z-10 inset-0 overflow-y-auto modal hidden" id="confirm-modal" aria-labelledby="modal-title" role="dialog" aria-modal="true">
    <div class="flex items-end justify-center min-h-screen pt-4 px-4 pb-20 text-center sm:block sm:p-0">
        <div class="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" aria-hidden="true"></div>
        <!-- This element is to trick the browser into centering the modal contents. -->
        <span class="hidden sm:inline-block sm:align-middle sm:h-screen" aria-hidden="true">&#8203;</span>
        <div class="inline-block align-bottom bg-white rounded-lg text-left overflow-hidden shadow-xl transform transition-all sm:my-8 sm:align-middle sm:max-w-lg sm:w-full">
            <form action="{{ route('public.member.profile.social.delete', $item->id) }}" method="POST">
                @csrf
                {{ method_field('delete') }}
                <div class="bg-white px-4 pt-5 pb-4 sm:p-6 sm:pb-4">
                    <div class="sm:flex sm:items-start">
                        <div class="img-container">
                            <div class="row">
                                <h3>Bạn có muốn xoá không?</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="bg-gray-50 px-4 py-3 sm:px-6 sm:flex sm:flex-row-reverse">
                <button name="ok" type="submit" class="mt-3 w-full inline-flex justify-center rounded-md border border-transparent shadow-sm px-4 py-2 bg-red-600 text-base font-medium text-white hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 sm:ml-3 sm:w-auto sm:text-sm">
                    {{ __('Ok') }}
                </button>
                <button name="cancel" type="button" class="mt-3 w-full inline-flex justify-center rounded-md border border-gray-300 shadow-sm px-4 py-2 bg-white text-base font-medium text-gray-700 hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 sm:ml-3 sm:w-auto sm:text-sm">
                    {{ __('Cancel') }}
                </button>
            </div>
            </form>
        </div>
    </div>
</div>
