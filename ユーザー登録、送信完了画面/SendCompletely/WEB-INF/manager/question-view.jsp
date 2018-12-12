<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/question.css">
    <title>メインページ</title>
</head>

<body>
    <header>
        <ul class="breadcrumb">
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="question-answer.html" itemprop="url">
                    <span itemprop="title">>回答フォーム</span>
                </a>
            </li>
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="question-responce.html" itemprop="url">
                    <span itemprop="title">>回答ページ</span>
                </a>
            </li>
        </ul>
    </header>
    <main>
        <h2>全体スケジュールについて・・・</h2>
        <div id="responce-main">
            <h3>Q.</h3>
            <p>全体スケジュールについて不備を発見したのですが、どこに届け出ればよいでしょうか？</p>
        </div>
        <div id="responce-sub">
            <textarea placeholder="回答を入力"></textarea>
        </div>
        <div id="control">
            <a href="#" class="square_btn" id="square_btn_size">回答する</a>
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
