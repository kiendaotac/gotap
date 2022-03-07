$(document).ready(function (){
    $(document).on('click tap', 'button[name=btn-edit-cover]', function (e) {
        $('input[name=image-cover]').trigger('click');
    })
    $(document).on('change', 'input[name=image-cover].image-cover', function (e) {
        let files = e.target.files;
        if (files && files.length > 0) {
            let file = files[0];
            let formData = new FormData();
            let token = $('input[name=_token]').val();
            let url = $('input[name=url-cover]').val();
            formData.append('cover', file);
            formData.append('_token', token);
            $.ajax({
                type: "POST",
                url: url,
                data: formData,
                processData: false,
                contentType: false,
                success: function (data) {
                    let imageUrl = '/storage/' + data.data.url
                    $('.profile-cover.bg-cover').css('background-image', 'url(' + imageUrl + ')');
                    $('input[name=cover]').val(data.data.url);
                }
            });
        }
    })
    $(document).on('click tap', '.edit-profile-avatar', function (e) {
        $('input[name=image]').trigger('click');
    })
    let $modal = $('.modal');
    let image = document.getElementById('image');
    let cropper;
    $(document).on("change", "input[name=image].image", function (e) {
        let files = e.target.files;
        let done = function (url) {
            image.src = url;
            initCropper();
            $modal.removeClass('hidden');
        };
        let reader;
        let file;
        let url;
        if (files && files.length > 0) {
            file = files[0];
            if (URL) {
                done(URL.createObjectURL(file));
            } else if (FileReader) {
                reader = new FileReader();
                reader.onload = function (e) {
                    done(reader.result);
                };
                reader.readAsDataURL(file);
            }
        }
    });
    let initCropper = function () {
        cropper = new Cropper(image, {
            aspectRatio: 1,
            viewMode: 3,
            preview: '.preview'
        });
    }
    let destroyCropper = function () {
        cropper.destroy();
        $('input[name=image]').val('');
        cropper = null;
    }

    $(document).on('click','button[name=crop]', function () {
        let canvas = cropper.getCroppedCanvas({
            width: 240,
            height: 240,
        });
        canvas.toBlob(function (blob) {
            let formData = new FormData();
            let token = $('input[name=_token]').val();
            let url = $('input[name=url]').val();
            formData.append('avatar', blob, 'avatar ' + new Date().getTime() + '.png');
            formData.append('_token', token);
            $.ajax({
                type: "POST",
                url: url,
                data: formData,
                processData: false,
                contentType: false,
                success: function (data) {
                    $modal.addClass('hidden');
                    destroyCropper();
                    $('img#avatar').attr('src', '/storage/' + data.data.url);
                    $('input[name=avatar]').val(data.data.url);
                }
            });
        });
    })
    $(document).on('click', 'button[name=cancel]', function () {
        $modal.addClass('hidden');
        destroyCropper();
    })
});