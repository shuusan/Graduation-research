$(document).ready(function () {
    var div1 = $('#event');
    var div2 = $('#time-area');
    div1.scroll(function () {
        div2.scrollTop(div1.scrollTop());
    });
    div2.scroll(function () {
        div1.scrollTop(div2.scrollTop());
    });
});
