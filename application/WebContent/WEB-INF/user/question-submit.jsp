<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/user/question.css">
    <title>メインページ</title>
</head>

<body>
    <header>
        <ul class="breadcrumb">
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="User_Question_common" itemprop="url">
                    <span itemprop="title">>質問-メインページ</span>
                </a>
            </li>
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="User_Question_select" itemprop="url">
                    <span itemprop="title">>質問区分選択ページ</span>
                </a>
            </li>
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="User_Question_submit" itemprop="url">
                    <span itemprop="title">>質問送信ページ</span>
                </a>
            </li>
        </ul>
    </header>
    <main>
        <h2>ここは時間に関する質問フォームです。</h2>
        <div id="contents2">
            <p>質問分類</p>
            <br>
            <select id="select2">
                <option selected>競技時間について</option>
                <option>全体スケジュールについて</option>
                <option>日程について</option>
                <option>その他</option>
            </select>
            <br><br>
            <p>質問内容を入力して下さい</p>
            <br>
            <textarea></textarea>
            <a href="#" id="square_btn">送信！</a>
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
