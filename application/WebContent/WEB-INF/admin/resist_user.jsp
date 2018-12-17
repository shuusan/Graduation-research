<%@page import="dto.Admin_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Admin_DTO> deco = (ArrayList<Admin_DTO>)session.getAttribute("decoList2");
Admin_DTO dto = (null!=request.getAttribute("rex2"))?(Admin_DTO)request.getAttribute("rex2"):null;
Admin_DTO dto1 = (null!=request.getAttribute("tagName"))?(Admin_DTO)request.getAttribute("tagName"):null;
%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="css/admin/resist_user.css">
<!-- <script src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/choice.js"></script> -->

</head>

<body onLoad="functionName()">
	<header>
		<div id="nav-drawer">
			<input id="nav-input" type="checkbox" class="nav-unshown"> <label
				id="nav-open" for="nav-input"><span></span></label> <label
				class="nav-unshown" id="nav-close" for="nav-input"></label>
			<div id="nav-content">
				<a href="#" class="nav" id="here">スポーツ大会</a> <a href="#" class="nav">オープンキャンパス</a>
			</div>
		</div>
	</header>

	<main>
	<div class="area">
		<div class="ht">
			<p>新規登録</p>
		</div>
		<form action="Admin_resist" method="post" class="pull">
			学籍番号<br> <input type="number" name="banngou1" placeholder="学籍番号"
				class="textfield" maxlength='50' required><br>
				名前<br>
			<input type="text" name="namae1" placeholder="名前" class="textfield"
				maxlength='30' required><br>
				メールアドレス<br> <input
				type="email" name="mail1" placeholder="xxx@xx.xx.xxx"
				class="textfield" maxlength='50' required><br>
				学年<br>
			<select class="year" name="grade1">
				<option value="1" selected="selected">学年を選択</option>
				<option value="1">1年</option>
				<option value="2">2年</option>
				<option value="3">3年</option>
				<option value="4">4年</option>
			</select><br>
			学科・コース<br>
			<select class="parent2" name="deco1">
			<option value="<%=deco.get(0).getNum()%>" selected="selected">学科を選択</option>
				<%for(int i=0; i<deco.size();i++){ %>
					<option value="<%=deco.get(i).getNum()%>"><%=deco.get(i).getText()%></option>
				<%} %>
			</select><br>
			参照権限<br> <input type="number" name="authority1" class="参照権限" required><br>
			<div class="button">
				<input type="submit" value="resist" style="width: 100px; height: 50px" name="sb">
			</div>
		</form>
	</div>

	<div class="area">
		<div class="ht">
			<p>前回の登録内容</p>
		</div>
		<form action="Admin_resist" method="post" class="pull">
			学籍番号<br> <input type="number" name="banngou2" placeholder="学籍番号"
				class="textfield" maxlength='50' value="<%=(null!=dto)?dto.getNum(): "　"%>" required><br>
				名前<br>
			<input type="text" name="namae2" placeholder="名前" class="textfield"
				maxlength='30' value="<%=(null!=dto)?dto.getText(): "　"%>" required><br>
				メールアドレス<br> <input
				type="email" name="mail2" placeholder="xxx@xx.xx.xxx"
				class="textfield" maxlength='50' value="<%=(null!=dto)?dto.getText2(): "　"%>" required><br>
				学年<br>
			<select class="year" name="grade2">
				<option value="<%=(null!=dto)?dto.getNum2(): "　"%>" selected="selected" ><%=(null!=dto)?dto.getNum2(): "　"%></option>
				<option value="1">1年</option>
				<option value="2">2年</option>
				<option value="3">3年</option>
				<option value="4">4年</option>
			</select><br>
			学科・コース<br>
			<select class="parent2" name="deco2">
			<option value="<%=(null!=dto1)?dto1.getNum(): "　"%>" selected="selected"><%=(null!=dto1)?dto1.getText(): "　"%></option>
				<%for(int i=0; i<deco.size();i++){ %>
					<option value="<%=deco.get(i).getNum()%>"><%=deco.get(i).getText()%></option>
				<%}%>
			</select><br>
			参照権限<br> <input type="number" name="authority2" class="参照権限" value="<%=(null!=dto)?dto.getNum3(): "　"%>" required><br>
			<!-- <script>
                    var $children = $('.children2');
                    var original = $children.html();
                    $('.parent2').change(function() {
                        var val1 = $(this).val();
                        $children.html(original).find('option').each(function() {
                            var val2 = $(this).data('val');
                            if (val1 != val2) {
                                $(this).not(':first-child').remove();
                            }
                        });
                        if ($(this).val() == "") {
                            $children.attr('disabled', 'disabled');
                        } else {
                            $children.removeAttr('disabled');
                        }
                    });
                </script> -->
			<div class="button">
				<input type="submit" value="correct" style="width: 100px; height: 50px" name="sb">
			</div>
		</form>
	</div>
	</main>

</body>

</html>
