<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="UTF-8">
<title>更新型イベント管理ツール</title>
<link rel="stylesheet" href="css/login/login.css">
</head>

<body>
	<p id="title">更新型イベント管理ツール</p>
	<div id="area">
		<p id="userlog">ログイン</p>
		<form action="Login_Main" method="post" id="text">
			<p style="color: red">
				<input type="number" name="id" placeholder="学籍番号(半角数字7桁)" class="textfield"  required><br>
				<br>
				<input type="password" name="pass" placeholder="パスワード" class="textfield" maxlength='30' required><br>
				<%=request.getAttribute("caution") %>
			</p>
			<button type="submit" id="Login">ログイン</button>
		</form>
	</div>
</body>

</html>
