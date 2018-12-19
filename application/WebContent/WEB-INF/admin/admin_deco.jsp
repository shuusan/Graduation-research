<%@page import="dto.Admin_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
@SuppressWarnings("unchecked")
ArrayList<Admin_DTO> list = (ArrayList<Admin_DTO>)request.getAttribute("decoList");
%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/admin/admin_deco.css">
    <title>メインページ</title>
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
                <a href="#" class="nav" id="here">スポーツ大会</a>
                <a href="#" class="nav">オープンキャンパス</a>
            </div>
        </div>
	<h4><%=(null!=request.getAttribute("label"))?request.getAttribute("label"):"　" %></h4>
    </header>
    <main>
    <form action="Admin_deco_form"  method="post" id="form1">
        <div id="search">
            <input type="text" placeholder="キーワードを入力" id="textfield">
            <button type="submit" id="button" value="search" name="btn">検索</button>
            <button type="submit" class="button" value="update" name="btn">更新</button>
            <button type="submit" class="button" value="delete" name="btn">削除</button>
        </div>

        <table>
            <thead>
                <tr>
                    <th class="space"></th>
                    <th class="item_head">学科</th>
                    <th class="item_head">コース</th>
                    <th width="15px;"></th>
                </tr>
            </thead>
            <tbody>
            <%for(int i=0;i<list.size();i++){ %>
                <tr>
                    <td><input type="checkbox" class="check" value="<%=list.get(i).getNum()%>"></td>
                    <td class="item_body"><input type="text" id="dep<%=i%>" class="department" value="<%=list.get(i).getText().split(" ")[0]%>" name="dep<%=i%>"></td>
                    <td class="item_body"><input type="text" id="cose<%=i%>" class="course" value="<%=list.get(i).getText().split(" ")[1]%>" name="cose<%=i%>"></td>
                </tr>
                <%} %>
            </tbody>
        </table>
    </form>
        <form action="Admin_deco_form" id="registration_area" method="post">
            <h1>新規作成</h1>
            <div>
                <input type="text" placeholder="学科名" class="textfield" name="department" required>
                <br>
                <input type="text" placeholder="コース名" class="textfield" name="cose" required>
                <button type="submit" id="registration_button" value="resist" name="btn">登録</button>
            </div>
        </form>
    </main>

    <footer>
    </footer>
</body>

</html>
