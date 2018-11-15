<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css//user/question.css">
    <title>メインページ</title>
</head>

<body>
    <header>
        <ul class="breadcrumb">
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="Question_common" itemprop="url">
                    <span itemprop="title">>質問-メインページ</span>
                </a>
            </li>
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="Question_responce" itemprop="url">
                    <span itemprop="title">>回答閲覧ページ</span>
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
            <h3>A.</h3>
            <p>
                不備を発見していただき、大変助かりました。
                ありがとうございます。
                本部に届け出ていただければ幸いです。
                よろしくお願いいたします。
            </p>
        </div>
        <div id="control">
            <a href="#" class="square_btn">前の質問</a>
            <a href="Question_common" class="square_btn" id="return">戻る</a>
            <a href="#" class="square_btn">次の質問</a>
        </div>
    </main>
    <nav>
        <a href="User_Timetable" class="navi">
            タイムテーブル
        </a>
        <a href="User_Question_common" class="navi">
            質問フォーム
        </a>
        <a href="User_Ankeeto" class="navi">
            アンケート機能
        </a>
        <a href="User_Setting" class="navi">
            設 定
        </a>
    </nav>
    <footer>
    </footer>
</body>

</html>
