<%@page import="dto.User_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
@SuppressWarnings("unchecked")
ArrayList<User_DTO> hl = (ArrayList<User_DTO>)request.getAttribute("hl");
%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/admin/ankeeto_update.css">
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
    <form action="Admin_ankeeto_resist" method="post" id="contents">
    	<div class="text">
            <p><%=String.valueOf(request.getAttribute("latop1")) %></p>
            <select name="edsel" class="game">
            <%for(int i=0; i<hl.size();i++){ %>
            <option value="<%=hl.get(i).getNum() %>"><%=hl.get(i).getText() %></option>
            <%} %>
            </select>
        </div>
        <div class="text">
            <p><%=String.valueOf(request.getAttribute("latop2")) %></p>
            <input type="text" value="<%=String.valueOf(request.getAttribute("edtit")) %>" class="game" name="edtit" required>
        </div>
        <div class="text">
            <p><%=String.valueOf(request.getAttribute("lamiddle")) %></p>
            <input type="text" value="<%=String.valueOf(request.getAttribute("edcon")) %>" class="url" name="edcon" required>

        </div>
        <div class="text">
            <p><%=String.valueOf(request.getAttribute("labottom")) %></p>
            <input type="datetime-local" class="time" value="<%=String.valueOf(request.getAttribute("edst")) %>" name="edst" required="required">～<input type="datetime-local" class="time" value="<%=String.valueOf(request.getAttribute("eden")) %>" name="eden" required="required">
        </div>
        <div class="boder">
            <a href="<%=String.valueOf(session.getAttribute("fa")) %>" id="back">戻る</a>
            <input type="submit" value="<%=String.valueOf(request.getAttribute("sb")) %>" class="update">
        </div>
	</form>
    </main>

    <footer>
    </footer>
</body>

</html>
