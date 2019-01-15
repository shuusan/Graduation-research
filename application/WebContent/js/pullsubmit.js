$(document).ready(function () {
	$('#select').on('change', function () {
		var data = $('#select option:selected').text();
		$('#data').attr('value', data);
		$('#search').submit();
    })
});
