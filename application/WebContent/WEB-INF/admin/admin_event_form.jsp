<%@page import="dto.User_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
@SuppressWarnings("unchecked")
ArrayList<User_DTO> list = (ArrayList<User_DTO>)request.getAttribute("hl");
%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/admin/event_form.css">
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
    <form action="Admin_event_form" method="post">
    	<div id="acbtn">
	    	<input type="text" placeholder="イベント名を入力" class="textfield" name="resitext">
	    	<button type="submit" class="button" value="resist" name="btn">新規追加</button><br>
	    	<input type="text" placeholder="キーワードを入力" class="textfield" name="keyword">
	        <button type="submit" class="button" value="search" name="btn">検索</button>
	        <button type="submit" class="button" value="delete" name="btn">削除</button>
    	</div>
        <table>
            <tbody>
            <%for(int i=0;i<list.size();i++){ %>
                <tr>
                    <td><input type="checkbox" class="check" value="<%=list.get(i).getNum() %>" name="ckb<%=i%>"></td>
                    <td class="item_body"><%=list.get(i).getText() %></td>
                    <td>
                        <button class="editing" value="<%=list.get(i).getNum() %>" name="next">詳細設定</button>
                    </td>
                </tr>
               <%} %>
            </tbody>
        </table>
	</form>
    </main>
    <footer>
    </footer>
</body>

</html>
