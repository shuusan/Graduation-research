<%@page import="dao.Admin_SelectDAO,dto.Admin_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	@SuppressWarnings("unchecked")
	ArrayList<Admin_DTO> list = (ArrayList<Admin_DTO>)request.getAttribute("userList");
%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <title>メインページ</title>
    <link rel="stylesheet" href="css/admin/adminUser.css">
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
		<form action="Admin_user" method="post" name="tableForm">
        <div id="search">
            <input type="text" placeholder="キーワードを入力" id="textfield">
            <button type="submit" value="search" id="button"  name="submit">検索</button>
            <button type="submit" value="update" class="button"  name="submit">更新</button>
            <button type="submit" value="delete" class="button"  name="submit">削除</button>
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
            <%for(int i=0; i<list.size(); i++){ %>
                <tr>
                    <td><input type="checkbox" class="check" name="<%=i%>" value="<%=list.get(i).getNum()%>" placeholder="半角数字7桁"></td>
                    <td class="item_body"><input type="number" name="stnum<%=i%>" value="<%=list.get(i).getNum()%>" required></td>
                    <td class="item_body"><input type="text" name="stname<%=i%>" value="<%=list.get(i).getText()%>" required></td>
                    <td id="item_body"><input type="number" name="grade<%=i%>" value="<%=list.get(i).getNum1()%>" required></td>
                    <td class="item_body"><input type="text" name="department<%=i%>" value="<%=list.get(i).getText1()%>" required></td>
                    <td class="item_body"><input type="text" name="cose<%=i%>" value="<%=list.get(i).getText2()%>" required></td>
                    <td class="item_body"><input type="email" name="mail<%=i%>" value="<%=list.get(i).getText3()%>" required></td>
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
