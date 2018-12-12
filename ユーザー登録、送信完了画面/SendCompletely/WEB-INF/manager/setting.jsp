<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/setting.css">
    <title>メインページ</title>
</head>

<body>
    <header>
        <div id="nav-drawer">
            <input id="nav-input" type="checkbox" class="nav-unshown">
            <label id="nav-open" for="nav-input"><span></span></label>
            <label class="nav-unshown" id="nav-close" for="nav-input"></label>
            <div id="nav-content">
                <a href="#">
                    <h1 id="here" class="nav">スポーツ大会</h1>
                </a>
                <a href="#">
                    <h1 class="nav">オープンキャンパス</h1>
                </a>
            </div>
        </div>
    </header>
    <main>
        <div id="nav">
            <a href="#Password">
                <p>Password</p>
            </a><br>
            <a href="#Mail">
                <p>Mail</p>
            </a>
        </div>
        <div id="sub">
            <div id="scroll">
                <div id="Password" class="contents">
                    <div class="title">
                        <h2>Password</h2><br>
                    </div>
                    <input type="text" class="text" placeholder="新しいパスワードの入力"><br>
                    <input type="text" class="text" placeholder="新しいパスワードをもう一度入力">
                    <a href="#" class="square_btn">変更</a>
                </div>
                <div id="Mail" class="contents">
                    <div class="title">
                        <h2>Mail</h2><br>
                    </div>
                    <input type="text" class="text" placeholder="新しいメールアドレスの入力">
                    <a href="#" class="square_btn">変更</a>
                </div>
            </div>
        </div>
    </main>
    <nav>
        <a href="timetable.html">
            <h1>タイムテーブル</h1>
        </a>
        <a href="question-answer.html">
            <h1>回答フォーム</h1>
        </a>
        <a href="anke-to.html">
            <h1>アンケート機能</h1>
        </a>
        <a href="setting.html">
            <h1>設 定</h1>
        </a>
    </nav>
    <footer>
    </footer>
</body>

</html>
