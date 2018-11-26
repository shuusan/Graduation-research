<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="./css/login.css">
    <title>ログイン画面</title>
</head>

<body>
    <p id="title">aaaa</p>
    <div id="area">
        <p id="userlog">ユーザーログイン</p>

        <form action="Aルート.html">
            <div id="text">
                <p>
                    <input type="text" name="id" placeholder="ユーザー名かメールアドレス" class="textfield" maxlength='50' required><br><br>
                    <input type="password" name="pasu" placeholder="パスワード" class="textfield" maxlength='30' required><br>
                </p>
            </div>
            <input type="submit" id="Login" value="ログイン" required>
        </form>

        <br>
        <a href="" class="position">パスワードを忘れた方</a><br>
        <a href="" class="position">新規ログイン</a><br>
    </div>
</body>

</html>
