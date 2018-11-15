<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/manager/setting.css">
    <title>メインページ</title>
</head>

<body>
    <header>
        <div id="nav-drawer">
            <input id="nav-input" type="checkbox" class="nav-unshown">
            <label id="nav-open" for="nav-input"><span></span></label>
            <label class="nav-unshown" id="nav-close" for="nav-input"></label>
            <div id="nav-content">
                <a href="#" id="here" class="nav">
                   スポーツ大会
                </a>
                <a href="#" class="nav">
                    オープンキャンパス
                </a>
            </div>
        </div>
    </header>
    <main>
        <div id="nav">
            <a href="#Password">
                Password
            </a><br>
            <a href="#Mail">
                Mail
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
        <a href="Manager_Timetable" class="navi">
            タイムテーブル
        </a>
        <a href="Manager_Question_answer" class="navi">
            質問フォーム
        </a>
        <a href="Manager_Ankeeto" class="navi">
            アンケート機能
        </a>
        <a href="Manager_Setting" class="navi">
            設 定
        </a>
    </nav>
    <footer>
    </footer>
</body>

</html>
