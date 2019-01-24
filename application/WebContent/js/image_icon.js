$(document).ready(function () {
	$("img").hover(
			function () {
				$("#label").text($(this).attr("alt"))
			},
			function () {
				$("#label").text("質問事項を選択して下さい。")
			}
	);
});