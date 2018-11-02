$(document).ready(function () {

    //読込イベント処理を書く

    var div1 = $('#time-area');
    var div2 = $('#event-area');

    div1.scroll(function () {

        div2.scrollTop(div1.scrollTop());

    });

    div2.scroll(function () {

        div1.scrollTop(div2.scrollTop());
    });

});
