<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="css/login/login.css">
<title>ログイン画面</title>
</head>

<body>
	<p id="title">イベント管理タイムテーブル</p>
	<div id="area">
		<p id="userlog">ログイン</p>
		<form action="Login_Main" method="post">
			<div id="text">
				<p>
					<input type="text" name="id" placeholder="学籍番号" class="textfield"
						maxlength='50' required><br>
					<br> <input type="password" name="pass" placeholder="パスワード"
						class="textfield" maxlength='30' required><br>
				</p>
			</div>
			<input type="submit" id="Login" value="ログイン" required>
		</form>

		<br> <a href="#" class="position">パスワードを忘れた方</a><br> <a
			href="#" class="position">新規ログイン</a><br>
	</div>
</body>

</html>
