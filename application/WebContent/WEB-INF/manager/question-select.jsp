<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/user/question-select.css">
    <title>質問分類選択</title>
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
                    <span itemprop="title">>質問区分選択</span>
                </a>
            </li>
        </ul>
    </header>
    <main>
	    <form action="Manager_Question_submit"	metdod="get">
	    	<div id="area">
                <button type="submit"  value="1"  name="selectButton"><img src="photo/ankeeto.png" alt="1"></button>
                <button type="submit"  value="2"  name="selectButton"><img src="photo/bag.png" alt="2"></button>
                <button type="submit"  value="3"  name="selectButton"><img src="photo/bus.png" alt="3"></button>
                <button type="submit"  value="4"  name="selectButton"><img src="photo/character.png" alt="4"></button>
                <button type="submit"  value="5"  name="selectButton"><img src="photo/classwork.png" alt="1"></button>
                <button type="submit"  value="6"  name="selectButton"><img src="photo/explain.png" alt="2"></button>
                <button type="submit"  value="7"  name="selectButton"><img src="photo/handshake.png" alt="3"></button>
                <button type="submit"  value="8"  name="selectButton"><img src="photo/memo.png" alt="4"></button>
	    	</div>
	        <h2 id="label">質問事項を選択して下さい。</h2>
	    </form>
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
