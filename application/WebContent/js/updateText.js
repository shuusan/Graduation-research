$(document).ready(function () {
	var id1="";
    var id2="";
    var id3="";
    var id5="";
    var id6="";
    var id="";
    $('.btn.btn-primary').click(function () {
        var val = $(this).attr('id');
        var text = val.slice(val.length - 2);
        id=text;
        id1 = "#timeDATA" + text;
        id2 = "#title" + text;
        id3 = "#contents" + text;
        id4 = "#set" + text.slice(0,1);

        id5 = "#titleDATA" + text;
        id6 = "#contentsDATA" + text;
        var hoge1 = $(id1).val();
        var hoge2 = $(id2).text();
        var hoge3 = $(id3).text();
        var hoge4 = $(id4).text();
        $('.bar-event').text(hoge4);
        $('.bar-title').val(hoge2);
        $('.bar-time').val(hoge1);
        $('.bar-contents').val(hoge3);
    })

    $('.bar-title').change(function () {
        var val = $('.bar-title').val();
        $(id2).text(val);
        $(id5).val(val);
        $("#data"+id).attr("name","change_data"+id)
    })

    $('.bar-time').change(function () {
        var val = $('.bar-time').val();
        $(id1).val(val);
        $("#data"+id).attr("name","change_data"+id)
    })

    $('.bar-contents').change(function () {
        var val = $('.bar-contents').val();
        $(id3).text(val);
        $(id6).val(val);
        $("#data"+id).attr("name","change_data"+id)
    })

});
