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
        <ul class="breadcrumb">
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="Question_answer" itemprop="url">
                    <span itemprop="title">>回答フォーム</span>
                </a>
            </li>
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="Question_view" itemprop="url">
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
