$(document).ready(function (){

    $(document).on('click tap', '.bank-account .copy-button', function (e){
        e.stopPropagation();
    })

    // $(document).on('click tap', '.bank-account', function (){
    //     let card = $(this).find('.flip-card');
    //     if ($(card).hasClass('flip')) {
    //         $(card).removeClass('flip')
    //     } else  {
    //         $(card).addClass('flip')
    //     }
    // })

    $(document).on('click tap', '.copy-button', function () {
        alert('copied')
    })

    let sortable = $( ".sortable" );
    sortable.sortable();
    sortable.disableSelection();

    $(".select-2").select2({
        templateResult: formatState,
        templateSelection: formatState
    });

    $(document).on('click tap', 'button[name=save-social]', function (e){
        e.preventDefault();
        let socials = $('li.social');
        let arraySocials = [];
        $.each(socials, function (index, social) {
            arraySocials.push($(social).data('id'))
        })
        $('input[name=socials]').val(arraySocials.toString())
        $('form[name=socials]').submit();
    })


    function formatState (opt) {
        if (!opt.id) {
            return opt.text;
        }
        let optimage = $(opt.element).attr('data-icon');
        if(!optimage){
            return opt.text;
        } else {
            let baseUrlImage = $('select[name=social_id]').data("url");
            optimage = baseUrlImage + optimage
            let $opt = $(
                `<div class="flex flex-row">
                    <img class="ml-2" src="${optimage}" width="24px" height="24px"/> 
                    <span class="ml-5">${opt.text}</span>
                </div>`
            );
            return $opt;
        }
    }
})