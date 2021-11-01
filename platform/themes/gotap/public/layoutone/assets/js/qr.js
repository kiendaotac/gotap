$(document).ready(function (){
    window.qrcode = new QrCodeWithLogo({
        canvas: document.getElementById("gotap_qrcode"),
        content: document.getElementById('url').getAttribute('value'),
        width: 380,
        logo: {
            src: document.getElementById('logo').getAttribute('src'),
            logoSize: 0.2,
            borderRadius: 10
        },
    });

    qrcode.toCanvas();

});