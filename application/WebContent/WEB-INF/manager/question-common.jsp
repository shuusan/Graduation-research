<%@page import="dto.User_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<%
	request.setCharacterEncoding("UTF-8");

    @SuppressWarnings("unchecked")
    ArrayList<User_DTO> tag = (ArrayList<User_DTO>)session.getAttribute("tag");

    @SuppressWarnings("unchecked")
    ArrayList<User_DTO> cq = (ArrayList<User_DTO>)session.getAttribute("cqList");

    @SuppressWarnings("unchecked")
    ArrayList<User_DTO> humburger_list = (ArrayList<User_DTO>)session.getAttribute("hl");
    %>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/user/question-common.css">
<title>よくある質問</title>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/pullsubmit.js"></script>
</head>

<body>
	<header>
		<div id="nav-drawer">
			<input id="nav-input" type="checkbox" class="nav-unshown"> <label
				id="nav-open" for="nav-input"><span></span></label> <label
				class="nav-unshown" id="nav-close" for="nav-input"></label>
			<form action="Connecting" method="post" id="nav-content">
				<%for (int i = 0; i < humburger_list.size(); i++) {
					if (Integer.parseInt(String.valueOf(session.getAttribute("here"))) == i) {%>
						<button type="submit" name="hc" class="nav" id="here" value="<%=i%>"><%=humburger_list.get(i).getText()%></button>
					<%} else {%>
						<button type="submit" name="hc" class="nav" value="<%=i%>"><%=humburger_list.get(i).getText()%></button>
				<%		}
					}
				%>
			</form>
		</div>
		<ul class="breadcrumb">
			<li itemscope="itemscope"
				itemtype="http://data-vocabulary.org/Breadcrumb"><a
				href="Manager_Question_common" itemprop="url"> <span
					itemprop="title">>質問-メインページ</span>
			</a></li>
		</ul>
	</header>
	<main>
	<p id="title">よくある質問</p>
	<form action="Manager_Question_common" method="post" id="search">
		<select id="select" name="select">
			<option selected value="0">すべて</option>
			<%for(int i = 0; i < tag.size(); i++){ %>
				<%if(Integer.parseInt(String.valueOf(session.getAttribute("qdv")))==tag.get(i).getNum()){ %>
					<option selected value="<%=session.getAttribute("qdv")%>"><%=session.getAttribute("qdt")%></option>
				<%}else{ %>
					<option value="<%=tag.get(i).getNum() %>" id="op<%=i%>"><%=tag.get(i).getText() %></option>
				<%} %>
			<%} %>
		</select>
		<input type="text" placeholder="検索する" id="textfield" name="text">
		<button type="submit" class="square_btn">送信！</button>
		<a class="square_btn" href="Manager_Question_answer">回答する</a>
		<input type="text" id="data" name="data" value="<%=session.getAttribute("qdv")%>">
	</form>
	<form action="Manager_Question_responce" method="post" id="question">
		<%for(int i=0; i<cq.size();i++){ %>
			<button type="submit" value="<%=cq.get(i).getNum()%>"
				name="buttonLink" class="liSubmit"><%=cq.get(i).getText()%></button>
		<%} %>
	</form>
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
