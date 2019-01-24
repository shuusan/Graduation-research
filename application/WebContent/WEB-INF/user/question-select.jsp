<%@page import="dao.User_SelectDAO"%>
<%@page import="dto.User_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ArrayList<User_DTO> list = User_SelectDAO.tagList();
    %>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/user/question-select.css">
    <title>更新型イベント管理ツール</title>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/image_icon.js"></script>
</head>

<body>
    <header>
    </header>
    <main>
	    <form action="User_Question_submit"	method="get">
	    	<div id="area">
	    	<%for(int i=0; i<list.size();i++){ %>
                <button type="submit"  value="<%=list.get(i).getNum() %>"  name="selectButton"><img src="photo/<%=list.get(i).getText1() %>" alt="<%=list.get(i).getText() %>"></button>
            <%} %>
	    	</div>
	        <h2 id="label">質問事項を選択して下さい。</h2>
	    </form>
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
