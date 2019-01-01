$(document).ready(function () {
	$('#file').change(function(){
		  if (this.files.length > 0) {
		    // 選択されたファイル情報を取得
		    var file = this.files[0];

		    // readerのresultプロパティに、データURLとしてエンコードされたファイルデータを格納
		    var reader = new FileReader();
		    reader.readAsDataURL(file);

		    reader.onload = function() {
		      $('#data').attr('value', reader.result );
		    }
		  }
		});
	$(function(){
	    $("#registration_button").on("click", function(e){
	    	var data1= $("#file").val();
	    	var data2= $("#tagName").val();
	    	var file = "/application/WebContent/photo/" + data1;
	    	if(null!=data1&&null!=data2){
	    		console.log(file);
	    		$target = $(e.target);
	    		$target.attr('download', file);
	    	}
	    });
	});
});