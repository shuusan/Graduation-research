<%@page import="dto.User_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
User_DTO data = (User_DTO)request.getAttribute("qData");
%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/admin/question_update.css">
    <title>更新型イベント管理ツール</title>
</head>

<body>
    <header>
        <div id="nav-drawer">
            <input id="nav-input" type="checkbox" class="nav-unshown">
            <label id="nav-open" for="nav-input"><span></span></label>
            <label class="nav-unshown" id="nav-close" for="nav-input"></label>
            <div id="nav-content">
                <a href="Admin_event_form" class="nav">イベントフォーム</a>
                <a href="Admin_ankeeto" class="nav">アンケートフォーム</a>
                <a href="Admin_form" class="nav">質問フォーム</a>
                <a href="Admin_user" class="nav">ユーザーフォーム</a>
                <a href="Admin_deco_form" class="nav">学年学科フォーム</a>
                <a href="Admin_tag" class="nav">タグフォーム</a>
                <a href="Manager_Timetable" class="nav">運営者<br>(管理者に戻るには設定から)</a>
                <a href="Login_Main" class="nav">ログアウト</a>
            </div>
        </div>
    </header>
    <main>
    <form action="Admin_question_update" method="post">
        <div class="text">
            <p>タイトル</p>
            <textarea class="title" readonly="readonly"><%=data.getText() %></textarea>
        </div>
        <div class="text">
            <p>質問</p>
            <textarea class="question" readonly="readonly"><%=data.getText1() %></textarea>
        </div>
        <div class="text">
            <p>回答</p>
            <textarea class="answer" name="answer"><%=data.getText2() %></textarea>
        </div>
        <div class="boder">
            <button type="submit" class="button" name="btn" value="back">戻る</button>
            <button type="submit" class="update" name="btn" value="<%=data.getNum() %>">更新</button>
        </div>
	</form>
    </main>

    <footer>
    </footer>
</body>

</html>
>