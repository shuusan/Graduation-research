<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/admin/event_select.css">
</head>

<body>
    <header>
        <div id="nav-drawer">
            <input id="nav-input" type="checkbox" class="nav-unshown">
            <label id="nav-open" for="nav-input"><span></span></label>
            <label class="nav-unshown" id="nav-close" for="nav-input"></label>
            <div id="nav-content">
                <a href="#" class="nav" id="here">スポーツ大会</a>
                <a href="#" class="nav">オープンキャンパス</a>
            </div>
        </div>
    </header>
    <main>
        <form action="Admin_event_select" method="post">
            <button type="submit" value="middle" class="contents" name="btn">
                <h1>ミドル<br>イベント</h1>
            </button>
            <button type="submit" value="bottom" class="contents" name="btn">
                <h1>ボトム<br>イベント</h1>
            </button>
        </form>
    </main>

    <footer>
    </footer>
</body>

</html>
