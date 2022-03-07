$(document).ready(function () {
    Init();

    $('.select-2').on('change', function (e) {
        Init();
    });

    $('input').on('input', function () {
        let name = $('#social_name').val();
        $('#preview-name').text(name);
    })

    function Init() {
        let selected = $('.select-2').find(":selected");
        let data = selected.data("source");
        let url = $('select[name=social_id]').data("url");
        if (!data.is_bank) {
            $('input[name=name]').val(data.name);
            $('input[name=social_value]').val(data.hint);
            let labelSocialName = $('#label_social_name');
            labelSocialName.text(labelSocialName.data('label-social'));
            let labelSocialValue = $('#label_social_value');
            labelSocialValue.text(labelSocialValue.data('label-social'));
            $('#social_name').attr('placeholder',labelSocialName.data('label-social'));
            $('#social_value').attr('placeholder',labelSocialValue.data('label-social'));
        } else {
            $('input[name=name]').val('');
            $('input[name=social_value]').val('');
            let labelSocialName = $('#label_social_name');
            labelSocialName.text(labelSocialName.data('label-bank'));
            let labelSocialValue = $('#label_social_value');
            labelSocialValue.text(labelSocialValue.data('label-bank'));
            $('#social_name').attr('placeholder',labelSocialName.data('label-bank'));
            $('#social_value').attr('placeholder',labelSocialValue.data('label-bank'));
        }
        $('#hint').text(data.hint);

        let name = $('#social_name').val();
        $('#preview-name').text(name);

        let imageLink = selected.data('icon')
        $('#preview-icon').attr('src', imageLink)
    }
})