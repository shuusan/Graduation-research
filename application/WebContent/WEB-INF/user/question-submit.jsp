<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dto.User_DTO"%>
   <%
   @SuppressWarnings("unchecked")
   ArrayList<User_DTO> list = (ArrayList<User_DTO>)session.getAttribute("tag");
   %>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/user/question.css">
    <title>メインページ</title>
</head>

<body>
    <header>
        <ul class="breadcrumb">
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="User_Question_common" itemprop="url">
                    <span itemprop="title">>質問-メインページ</span>
                </a>
            </li>
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="User_Question_select" itemprop="url">
                    <span itemprop="title">>質問区分選択ページ</span>
                </a>
            </li>
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="User_Question_submit" itemprop="url">
                    <span itemprop="title">>質問送信ページ</span>
                </a>
            </li>
        </ul>
    </header>
    <main>
        <h2>ここは<%=request.getAttribute("question") %>に関する質問フォームです。</h2>
        <div id="contents2">
            <p>質問分類</p>
            <br>

            <form action="User_Question_submit" method="post">
	            <select id="select2" name="select" required="required">
	                <option value="<%=request.getAttribute("questionNo") %>" selected><%=request.getAttribute("question") %>について</option>
	                <%for(int i=0;i<list.size();i++){ %>
	                	<option value="<%=list.get(i).getNum() %>"><%=list.get(i).getText() %>について</option>
	                <%} %>
	            </select>
	            <p>タイトル</p>
	            	<br>
	            <input type="text" name="title" placeholder="タイトル" required="required">
	            <br>
	            	<p>質問内容を入力して下さい</p>
	            <br>
	            <textarea name="question" placeholder="質問内容を入力してください" required="required"></textarea>
	            <button type="submit" id="square_btn">送信！</button>
            </form>
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
