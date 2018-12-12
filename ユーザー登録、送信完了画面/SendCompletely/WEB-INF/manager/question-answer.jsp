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
        <ul class="breadcrumb">
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="question-answer.html" itemprop="url">
                    <span itemprop="title">>回答フォーム</span>
                </a>
            </li>
        </ul>
    </header>
    <main>
        <h2>回答フォーム</h2>
        <div id="search">
            <select id="select">
                <option selected>全体スケジュール</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
            </select>
            <input type="text" placeholder="検索する" id="textfield">
            <a href="#" id="square_btn">送信！</a>
            <a id="square_btn" href="question-common.html">よくある質問へ</a>
        </div>
        <div id="question">
            <ul id="common-contents">
                <li><a href="question-view.html">全体スケジュールについて</a></li>
                <li><a href="question-view.html">全体スケジュールについて</a></li>
                <li><a href="question-view.html">全体スケジュールについて</a></li>
                <li><a href="question-view.html">全体スケジュールについて</a></li>
                <li><a href="question-view.html">全体スケジュールについて</a></li>
                <li><a href="question-view.html">全体スケジュールについて</a></li>
                <li><a href="question-view.html">全体スケジュールについて</a></li>
            </ul>
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
