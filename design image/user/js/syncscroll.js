$(document).ready(function () {

    ('#time-area').scroll(function () {

        $('#event-area').scrollTop($('#time-area').scrollTop());

    });

    $('#event-area').scroll(function () {

        $('#time-area').scrollTop($('#event-area').scrollTop());
    });

});
