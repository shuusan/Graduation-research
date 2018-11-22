<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dto.User_DTO"%>
<%
@SuppressWarnings("unchecked")
ArrayList<User_DTO> list = (ArrayList<User_DTO>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/user/ankeeto.css">
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
        <div id="scroll">
            <div class="form">
            <%for(int i=0; i<list.size(); i++){ %>
	                <h2><%=list.get(i).getText() %></h2>
	                <a href="<%=list.get(i).getText1() %>" class="link"><%=list.get(i).getText1().substring(0,50)+"..." %></a>
	                <p>回収期間：<%=list.get(i).getText2()+" ～ "+list.get(i).getText3()%></p>
                <%} %>
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
