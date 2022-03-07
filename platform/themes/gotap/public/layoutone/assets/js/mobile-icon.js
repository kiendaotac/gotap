$(document).ready(function (){

    $(document).on('click tap', '.is_bank', function (){
        let data = $(this).data('social')
        $('#bank').text(data.social.name)
        $('#name').text(data.name)
        $('#card').text(data.social_value)
        $('.modal-bank').removeClass('hidden')
    })

    $(document).on('click tap', '.close-modal-bank', function () {
        $('.modal-bank').addClass('hidden')
    })
});