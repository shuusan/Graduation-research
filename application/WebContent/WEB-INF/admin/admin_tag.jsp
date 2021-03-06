<%@page import="dto.Admin_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    @SuppressWarnings("unchecked")
    ArrayList<Admin_DTO> list = (ArrayList<Admin_DTO>) request.getAttribute("tagList");
    %>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/admin/tag.css">
    <!--
<script type="text/javascript" src="js/modal.js"></script>
<script type="text/javascript" src="js/image_icon.js"></script>
-->
    <title>更新型イベント管理ツール</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/data-change.js"></script>
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
        <form action="Admin_tag" id="search" method="post">
            <input type="text" placeholder="キーワードを入力" name="key">
            <button type="submit" value="search" id="button" name="btn" form="search">検索</button>
            <button type="submit" value="update" class="button" name="btn" form="act">更新</button>
            <button type="submit" value="delete" class="button" name="btn" form="act">削除</button>
        </form>
	<form action="Admin_tag" id="act" method="post">
        <table>
            <thead>
                <tr>
                    <th class="item_head">タグ一覧</th>
                    <th width="15px"></th>
                </tr>
            </thead>
            <tbody>
            <%for(int i=0; i<list.size();i++){ %>
                <tr>
                    <td class="item_body">
                        <div class="tool">
                            <input type="checkbox" class="check" value="<%=list.get(i).getNum()%>" name="ckb<%=i %>">
                            <input type="text" value="<%=list.get(i).getNum()%>" id="id<%=i%>" name="id<%=i %>" class="data">
                        </div>
                        <img src="photo/<%=list.get(i).getText1() %>" class="img" id="image">
                        <div>
                            <input type="text" class="tagname" value="<%=list.get(i).getText()%>" name="tag<%=i%>">
                        </div>
                    </td>
                    <%i++;if(i==list.size()){break;} %>
                    <td class="item_body">
                        <div class="tool">
                            <input type="checkbox" class="check" value="<%=list.get(i).getNum()%>" name="ckb<%=i %>">
                            <input type="text" value="<%=list.get(i).getNum()%>" id="id<%=i%>" name="id<%=i %>" class="data">
                        </div>
                        <img src="photo/<%=list.get(i).getText1() %>" class="img" id="image">
                        <div>
                            <input type="text" class="tagname" value="<%=list.get(i).getText()%>" name="tag<%=i%>">
                        </div>
                    </td>
                    <%i++;if(i==list.size()){break;} %>
                    <td class="item_body">
                        <div class="tool">
                            <input type="checkbox" class="check" value="<%=list.get(i).getNum()%>" name="ckb<%=i %>">
                            <input type="text" value="<%=list.get(i).getNum()%>" id="id<%=i%>" name="id<%=i %>" class="data">
                        </div>
                        <img src="photo/<%=list.get(i).getText1() %>" class="img" id="image">
                        <div>
                            <input type="text" class="tagname" value="<%=list.get(i).getText()%>" name="tag<%=i%>">
                        </div>
                    </td>
                </tr>
                <%} %>
            </tbody>
        </table>
        </form>
        <div id="registration_area">
            <h1>新規タグ作成</h1>
            <form method="post" enctype="multipart/form-data" action="Admin_tag">
                <input type="file" name="file" class="textfield" required>
                <input type="text" name="tn" placeholder="タグ名を入力してください" class="textfield" required>
                <button type="submit" value="resist" id="registration_button" name="btn">登録</button>
            </form>
        </div>
    </main>

    <footer>
    </footer>
</body>

</html>
