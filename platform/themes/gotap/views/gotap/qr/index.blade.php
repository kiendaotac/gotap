<div id="page-transition"></div>
<div id="__next">
    <main class="tappi-qr-code-render flex flex-col m-auto pt-4">
        <img alt="Logo" id="logo" class="max-w-9 m-auto" src="{{ theme_option('logo') ? RvMedia::getImageUrl(theme_option('logo')) : RvMedia::getDefaultImage() }}">
        <div class="text-center font-bold mt-9">QR code của bạn:</div>
        <div class="flex justify-center pb-20 pt-10">
            <img id="qrcode" alt="QR Code" src="data:image/png;base64, {!! base64_encode(
                \SimpleSoftwareIO\QrCode\Facades\QrCode::size(400)
                ->style('round')
                ->margin(1)
                ->errorCorrection('H')
                ->format('png')
                ->merge('/public/storage/'. theme_option('logo-qr'), .3)
                ->generate($url)) !!} ">
{{--            <canvas style="height:290px;width:290px" height="290" width="290" id="gotap_qrcode"></canvas>--}}
        </div>
        <button class="m-auto block w-32 bg-blue-500 active:bg-blue-700 text-white font-semibold hover:shadow-md shadow text-sm px-3 py-0/3 rounded outline-none focus:outline-none sm:mr-2 mb-1 ease-linear transition-all duration-150"
                type="button" onclick="download()">Download
        </button>
        <input id="url" type="hidden" value="{{ $url }}">
    </main>
    <script>
        function download() {
            var a = document.createElement('a');
            a.href = document.getElementById('qrcode').getAttribute('src');
            a.download = "{{ $uuid }}.png";
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
        }
    </script>
</div>