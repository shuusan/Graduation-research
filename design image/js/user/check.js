var $ = jQuery;
$('.check').on('hover', function () {

    var $this = $(this)
    var $option = $this.attr("id");
    $('#label').text($option.text());
    // onchange後にフォーカスしてるのが嫌な場合
    $this.blur();

});
