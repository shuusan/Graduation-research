$(document).ready(function () {
    $('button').click(function () {
        var val = $(this).attr('id');
        var text = val.slice(val.length - 1);
        var id1 = "#time" + text;
        var id2 = "#title" + text;
        var id3 = "#contents" + text;
        var hoge1 = $(id1).text();
        var hoge2 = $(id2).text();
        var hoge3 = $(id3).text();
        $('.bar-title').text(hoge2);
        $('.bar-time').text(hoge1);
        $('.bar-contents').text(hoge3);
    })

});
