

$(document).ready(function() {
    $(document).on('click', '.f-button.add', function (e) {
        let input = $(this).siblings('input.quantity');
        let currentValue = parseInt(input.val());
        input.prop('value', currentValue + 1);
        updateTotal();
    })

    $(document).on('click', '.f-button.decrease', function (e) {
        let input = $(this).siblings('input.quantity');
        console.log(input.val())
        let currentValue = parseInt(input.val());
        if (currentValue > 0) {
            input.prop('value', currentValue - 1);
        }
        updateTotal();
    })

    $(document).on('change', 'input.quantity', function () {
        updateTotal()
    })

    $(document).on('submit', 'form#form-payment', function (e) {
        e.preventDefault();
        let url
    })

    function updateTotal() {
        let inputs = $('input.quantity');
        let total = 0;
        $.each(inputs, (index, input) => {
            let qty = parseInt($(input).val());
            let price = parseInt($(input).data('price'));
            if (qty >= 0 && price >= 0) {
                total += qty * price
            }
        })

        $('.total-price').text(total.toLocaleString('vi-VN', {
            style: 'currency',
            currency: 'VND',
        }))
    }

});