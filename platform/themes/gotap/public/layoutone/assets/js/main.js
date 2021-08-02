$(document).ready(function (){

    $(document).on('click tap', '.bank-account .copy-button', function (e){
        e.stopPropagation();
    })

    $(document).on('click tap', '.bank-account', function (){
        let card = $(this).parents('.flip-card');
        if ($(card).hasClass('flip')) {
            $(card).removeClass('flip')
        } else  {
            $(card).addClass('flip')
        }
    })

    $(document).on('click tap', '.copy-button', function () {
        alert('copied')
    })

    let sortable = $( ".sortable" );
    sortable.sortable();
    sortable.disableSelection();
})