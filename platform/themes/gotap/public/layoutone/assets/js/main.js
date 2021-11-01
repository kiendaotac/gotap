$(document).ready(function (){

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