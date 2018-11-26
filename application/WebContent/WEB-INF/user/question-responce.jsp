<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dto.User_DTO"%>
    <%
    User_DTO dto = (User_DTO)request.getAttribute("answer");
    %>
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
                <a href="User_Question_common" itemprop="url">
                    <span itemprop="title">>質問-メインページ</span>
                </a>
            </li>
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="User_Question_responce" itemprop="url">
                    <span itemprop="title">>回答閲覧ページ</span>
                </a>
            </li>
        </ul>
    </header>
    <main>
    	<div id="cqa">
	        <p id="title"><%=dto.getText() %></p>
	        <textarea class="textarea" id="responce-main" cols="" rows="" readonly><%=dto.getText1() %></textarea>
	        <textarea class="textarea" id="responce-sub" cols="" rows="" readonly><%=("null".equals(dto.getText2()))?"　":dto.getText2() %></textarea>
	        <div id="control">
	            <a href="#" class="square_btn">前の質問</a>
	            <a href="User_Question_common" class="square_btn" id="return">戻る</a>
	            <a href="#" class="square_btn">次の質問</a>
	        </div>
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
