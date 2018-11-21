<%@page import="dto.User_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList"%>
    <%
    @SuppressWarnings("unchecked")
    ArrayList<User_DTO> tag = (ArrayList<User_DTO>)request.getAttribute("tag");

    @SuppressWarnings("unchecked")
    ArrayList<User_DTO> cq = (ArrayList<User_DTO>)request.getAttribute("cqList");
    %>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/user/question.css">
    <title>メインページ</title>
</head>

<form action="/application/User_Question_responce" method="post" name="form">

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
	        <ul class="breadcrumb">
	            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
	                <a href="User_Question_common" itemprop="url">
	                    <span itemprop="title">>質問-メインページ</span>
	                </a>
	            </li>
	        </ul>
	    </header>
	    <main>
	        <h2>よくある質問</h2>
	        <div id="search">
	            <select id="select">
	                <option selected>ソート</option>
	            <%for(int i = 0; i < tag.size(); i++){ %>
	                <option value="<%=tag.get(i).getNum() %>"><%=tag.get(i).getText() %></option>
	                <%} %>
	            </select>
	            <input type="text" placeholder="検索する" id="textfield">
	            <a href="#" id="square_btn">送信！</a>
	            <a id="square_btn" href="User_Question_select">直接質問する</a>
	        </div>
	        <div id="question">
	            <ul id="common-contents">
		            	<%for(int i=0; i<cq.size();i++){ %>
		                		<li value="<%=cq.get(i).getNum()%>"><a href="javascript:form.submit()"><%=cq.get(i).getText()%></a></li>
		                	<%} %>
	            </ul>
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

</form>

</html>
