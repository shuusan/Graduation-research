<%@page import="dto.User_DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<%
    @SuppressWarnings("unchecked")
    ArrayList<User_DTO> tag = (ArrayList<User_DTO>)session.getAttribute("tag");

    @SuppressWarnings("unchecked")
    ArrayList<User_DTO> cq = (ArrayList<User_DTO>)request.getAttribute("cqList");
    %>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/user/question-common.css">
<title>メインページ</title>
</head>

<body>
	<header>
		<div id="nav-drawer">
			<input id="nav-input" type="checkbox" class="nav-unshown"> <label
				id="nav-open" for="nav-input"><span></span></label> <label
				class="nav-unshown" id="nav-close" for="nav-input"></label>
			<div id="nav-content">
				<a href="#" class="nav" id="here">スポーツ大会</a> <a href="#" class="nav">オープンキャンパス</a>
			</div>
		</div>
		<ul class="breadcrumb">
			<li itemscope="itemscope"
				itemtype="http://data-vocabulary.org/Breadcrumb"><a
				href="User_Question_common" itemprop="url"> <span
					itemprop="title">>質問-メインページ</span>
			</a></li>
		</ul>
	</header>
	<main>
	<p id="title">よくある質問</p>
	<form action="User_Question_common" method="post" id="search">
		<select id="select" name="select">
			<option selected>ソート</option>
			<%for(int i = 0; i < tag.size(); i++){ %>
			<option value="<%=tag.get(i).getNum() %>"><%=tag.get(i).getText() %></option>
			<%} %>
		</select>
		<input type="text" placeholder="検索する" id="textfield" name="text" required="required">
		<button type="submit" class="square_btn">送信！</button>
		<a class="square_btn" href="User_Question_select">直接質問する</a>
	</form>
	<form action="User_Question_responce" method="post" id="question">
			<%for(int i=0; i<cq.size();i++){ %>
			<button type="submit" value="<%=cq.get(i).getNum()%>"
				name="buttonLink" class="liSubmit"><%=cq.get(i).getText()%></button>
			<%} %>
	</form>
	</main>
	<nav>
        <a href="User_Timetable" class="navi"> タイムテーブル </a>
        <a href="User_Question_common" class="navi"> 質問フォーム </a>
        <a href="User_Ankeeto" class="navi"> アンケート機能 </a>
        <a href="User_Setting" class="navi"> 設 定 </a>
    </nav>
	<footer> </footer>
</body>

</html>
