<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/manager/question.css">
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
        <ul class="breadcrumb">
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="Manager_Question_answer" itemprop="url">
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
            <a id="square_btn" href="Manager_Question_common">よくある質問</a>
        </div>
        <div id="question">
            <ul id="common-contents">
                <li><a href="Manager_Question_view">全体スケジュールについて</a></li>
                <li><a href="Manager_Question_view">全体スケジュールについて</a></li>
                <li><a href="Manager_Question_view">全体スケジュールについて</a></li>
                <li><a href="Manager_Question_view">全体スケジュールについて</a></li>
                <li><a href="Manager_Question_view">全体スケジュールについて</a></li>
                <li><a href="Manager_Question_view">全体スケジュールについて</a></li>
                <li><a href="Manager_Question_view">全体スケジュールについて</a></li>
            </ul>
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
