$(document).ready(function () {
    $('button').click(function () {
        var val = $(this).attr('id');
        var text = val.slice(val.length - 2);
        var id1 = "#time" + text;
        var id2 = "#title" + text;
        var id3 = "#contents" + text;
        var id4 = "#set" + text.slice(0,1);
        var hoge1 = $(id1).text();
        var hoge2 = $(id2).text();
        var hoge3 = $(id3).text();
        var hoge4 = $(id4).text();
        $('.bar-event').text(hoge4);
        $('.bar-title').text(hoge2);
        $('.bar-time').text(hoge1);
        $('.bar-contents').text(hoge3);
    })

});
