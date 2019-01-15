$(document).ready(function () {
    $('input').change(function () {
    	var num = $(this).attr('name').slice(6);
    	var id = "id" + num;
    	if(id != 'change_'+id){
        	var reid = $('#'+id).attr('name', 'change_' + id);
    	}
    })

    $('.hour').change(function () {
    	var num = $(this).attr('name').slice(6);
    	var id = "id" + num;
    	if(id != 'change_'+id){
        	var reid = $('#'+id).attr('name', 'change_' + id);
    	}
    })

    $('.minutes').change(function () {
    	var num = $(this).attr('name').slice(9);
    	var id = "id" + num;
    	if(id != 'change_'+id){
        	var reid = $('#'+id).attr('name', 'change_' + id);
    	}
    })

    $('textarea').change(function () {
    	var num = $(this).attr('name').slice(4);
    	console.log(num);
    	var id = "id" + num;
    	if(id != 'change_'+id){
        	var reid = $('#'+id).attr('name', 'change_' + id);
    	}
    })

    $('.ev-title').change(function () {
    	var num = $(this).attr('name').slice(8);
    	var id = "id" + num;
    	if(id != 'change_'+id){
        	var reid = $('#'+id).attr('name', 'change_' + id);
    	}
    })

});
