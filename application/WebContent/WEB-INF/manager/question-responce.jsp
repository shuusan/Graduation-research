<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="dto.User_DTO,java.util.ArrayList"%>
<%
    User_DTO dto = (User_DTO)request.getAttribute("answer");

	@SuppressWarnings("unchecked")
	ArrayList<User_DTO> cq = (ArrayList<User_DTO>)session.getAttribute("cqList");

%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/manager/question-responce.css">
<title>更新型イベント管理ツール</title>
</head>

<body>
	<header>
	</header>
	<main>
	<p id="title"><%=dto.getText() %></p>
	<div id="top">
		<label for="responce-main">Q.</label>
		<textarea class="textarea" id="responce-main" cols="80" rows="10"
			readonly><%=dto.getText1() %></textarea>
	</div>
	<div id="bottom">
		<label for="responce-sub">A.</label>
		<textarea class="textarea" id="responce-sub" cols="80" rows="20"
			readonly><%=(null==dto.getText2())?"　":dto.getText2() %></textarea>
	</div>
	<div id="control">
		<a href="Manager_Question_common" class="square_btn" id="return">戻る</a>
	</div>
	</main>
	<nav>
        <a href="Manager_Timetable" class="navi">
            タイムテーブル
        </a>
        <a href="Manager_Question_answer" class="navi">
            回答フォーム
        </a>
        <a href="Manager_Ankeeto" class="navi">
            アンケート機能
        </a>
        <a href="Manager_Setting" class="navi">
            設 定
        </a>
    </nav>
	<footer> </footer>
</body>

</html>
