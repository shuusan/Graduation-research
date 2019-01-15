<%@page import="dto.User_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
@SuppressWarnings("unchecked")
User_DTO data = (User_DTO)request.getAttribute("qData");
%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/admin/question_update.css">
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