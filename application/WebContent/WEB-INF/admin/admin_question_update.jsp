<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/admin/question_update.css">
    <title>メインページ</title>
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
        <div class="text">
            <p>タイトル</p>
            <textarea class="title">全体スケジュールについて・・・</textarea>
        </div>
        <div class="text">
            <p>質問</p>
            <textarea class="question">全体スケジュールについて不備を発見したのですが、どこに届け出ればよいでしょうか？</textarea>
        </div>
        <div class="text">
            <p>回答</p>
            <textarea class="answer">不備を発見していただき、大変助かりました。 ありがとうございます。 本部に届け出ていただければ幸いです。 よろしくお願いいたします。</textarea>

        </div>
        <div class="boder">
            <button onclick="history.back()" type="button" class="button">戻る</button>
            <button type="button" class="update">更新</button>
        </div>

    </main>

    <footer>
    </footer>
</body>

</html>
>