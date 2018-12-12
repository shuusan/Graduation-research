$("#date").datepicker({ // 日付が選択された時、日付をテキストフィールドへセット
	onSelect: function(dateText, inst) {
		$("#date_val").val(dateText);
	}
});