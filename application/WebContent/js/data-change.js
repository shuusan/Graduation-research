$(document).ready(function () {
    $('input').change(function () {
    	var num = $(this).attr('name').slice(3);
    	var id = "id" + num;
    	if(id != 'change_'+id){
        	$('#'+id).attr('name', 'change_' + id);
    	}
    })

});
