<%@page import="dao.Admin_SelectDAO,dto.Admin_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	@SuppressWarnings("unchecked")
	ArrayList<Admin_DTO> list = (ArrayList<Admin_DTO>)session.getAttribute("userList");
%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <title>メインページ</title>
    <link rel="stylesheet" href="css/admin/adminUser.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/admin_user_data.js"></script>
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
    <form action="Admin_user" method="post">
	        <div id="search">
	            <input type="text" placeholder="キーワードを入力" id="textfield" name="txt">
	            <button type="submit" value="search" id="button" name="search">検索</button>
	            <a type="submit" href="Admin_resist" class="button" id="resist">登録</a>
	            <button type="submit" value="update" class="button" name="update">更新</button>
	            <button type="submit" value="delete" class="button" name="delete">削除</button>
	        </div>
	        <table>
	            <thead>
	                <tr>
	                    <th class="space"></th>
	                    <th class="item_head">学籍番号</th>
	                    <th class="item_head">名前</th>
	                    <th id="item_head">学年</th>
	                    <th class="item_head">学科</th>
	                    <th class="item_head">コース</th>
	                    <th class="item_head">メールアドレス</th>
	                    <th width="13.5px"></th>
	                </tr>
	            </thead>
	            <tbody>
	            <%for(int i=0; i<list.size(); i++){%>
	                <tr>
	                    <td><input type="checkbox" class="check" name="check<%=i%>" id="stnum<%=i%>" value="<%=list.get(i).getNum()%>" placeholder="半角数字7桁"></td>
	                    <td class="item_body"><input type="number" name="id <%=list.get(i).getNum()%>" id="id<%=i%>" value="<%=list.get(i).getNum()%>" required></td>
	                    <td class="item_body"><input type="text" name="name <%=list.get(i).getNum()%>" id="name<%=i%>" value="<%=list.get(i).getText()%>" required></td>
	                    <td class="item_number"><input type="number" name="grade <%=list.get(i).getNum()%>" id="grade<%=i%>" value="<%=list.get(i).getNum1()%>" required></td>
	                    <td class="item_body"><input type="text" name="department <%=list.get(i).getNum()%>" id="department<%=i%>" value="<%=list.get(i).getText1()%>" required></td>
	                    <td class="item_body"><input type="text" name="cose <%=list.get(i).getNum()%>" id="cose<%=i%>" value="<%=list.get(i).getText2()%>" required></td>
	                    <td class="item_body"><input type="email" name="mail <%=list.get(i).getNum()%>" id="mail<%=i%>" value="<%=list.get(i).getText3()%>" required></td>
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
