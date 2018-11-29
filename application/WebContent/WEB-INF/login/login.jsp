<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="UTF-8">
<title>ログイン</title>
<link rel="stylesheet" href="css/login/login.css">
</head>

<body>
	<p id="title">イベント管理タイムテーブル</p>
	<div id="area">
		<p id="userlog">ログイン</p>
		<form action="Login_Main" method="post">
			<div id="text">
				<p style="color: red">
					<input type="number" name="id" placeholder="学籍番号(半角数字7桁)" class="textfield"  required><br>
					<br>
					<input type="password" name="pass" placeholder="パスワード" class="textfield" maxlength='30' required><br>
					<%=request.getAttribute("caution") %>
				</p>
			</div>
			<button type="submit" id="Login">ログイン</button>
		</form>
		<br> <a href="#" class="position">パスワードを忘れた方</a><br> <a
			href="#" class="position">アカウントの新規作成</a><br>
	</div>
</body>

</html>
