$(document).ready(function () {
    $('input').change(function () {
    	var name = $(this).attr('name');
    	var id = $(this).attr('id');
    	if(name != 'change_'+name){
        	var reid = $('#'+id).attr('name', 'change_' + name);
    	}
    })

});
