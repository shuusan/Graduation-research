$(document).ready(function () {
    $(function () {
        $('#datepicker').datepicker({
            dateFormat: "yy/mm/dd",
            showOn: "button", // inputは非表示にしているのでボタンを表示させる
            buttonText: "カレンダー",
            onSelect: function (selected_date) {
                $('#display').val(selected_date);
            }
        });
    });
});
