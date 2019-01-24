$(document).ready(function () {
    $('input').change(function () {
    	var num = $(this).attr('name').slice(7);
    	console.log(num);
    	var id = "data" + num;
    	if(id != 'change_'+id){
        	$('#'+id).attr('name', 'change_' + id);
    	}
    })

});
