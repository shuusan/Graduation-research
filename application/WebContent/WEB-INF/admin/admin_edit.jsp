<%@page import="java.util.HashMap"%>
<%@page import="dto.User_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
@SuppressWarnings("unchecked")
ArrayList<User_DTO> hl = (ArrayList<User_DTO>)request.getAttribute("hl");
@SuppressWarnings("unchecked")
HashMap<String, String> hm = (HashMap<String, String>)request.getAttribute("hm");
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
    <form action="<%=String.valueOf(session.getAttribute("fa2")) %>" method="post" id="contents">
    	<div class="text">
            <p><%=hm.get("latop1") %></p>
            <select name="edsel" class="game">
            <%for(int i=0; i<hl.size();i++){ %>
            <option value="<%=hl.get(i).getNum() %>"><%=hl.get(i).getText() %></option>
            <%} %>
            </select>
        </div>
        <div class="text">
            <p><%=hm.get("latop2") %></p>
            <input type="text" value="<%=hm.get("edtit") %>" class="game" name="edtit" required>
        </div>
        <div class="text">
            <p><%=hm.get("lamiddle") %></p>
            <input type="text" value="<%=hm.get("edcon") %>" class="url" name="edcon" required>

        </div>
        <div class="text">
            <p><%=hm.get("labottom") %></p>
            <input type="date" value="<%=hm.get("edst_date") %>" name="edst_date" required="required"><input type="time" value="<%=hm.get("edst_time") %>" name="edst_time" required="required">
            <input type="date" value="<%=hm.get("eden_date") %>" name="eden_date" required="required"><input type="time" value="<%=hm.get("eden_time") %>" name="eden_time" required="required">
        </div>
        <div class="boder">
            <a href="<%=String.valueOf(session.getAttribute("fa")) %>" id="back">戻る</a>
            <button type="submit" value="<%=Integer.parseInt(hm.get("sbv")) %>" class="update" name="btn"><%=hm.get("sbt") %></button>
        </div>
	</form>
    </main>

    <footer>
    </footer>
</body>

</html>
