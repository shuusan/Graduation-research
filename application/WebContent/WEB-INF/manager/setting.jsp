<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dto.User_DTO"%>
<%
@SuppressWarnings("unchecked")
ArrayList<User_DTO> humburger_list = (ArrayList<User_DTO>)session.getAttribute("hl");
%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/user/setting.css">
    <title>設定</title>
</head>

<body>
    <header>

    </header>
    <main>
        <div id="nav">
            <a href="#Password">
                Password
            </a><br>
            <a href="#Mail">
                Mail
            </a>
        </div>
        <div id="sub">
            <div id="scroll">
            	<form action="User_Setting" method="post" name="passwordForm">
	                <div id="Password" class="contents">
	                    <div class="title">
	                        <h2>Password</h2><p><%=request.getAttribute("cautionPass") %><br>
	                    </div>
	                    <input type="password" name="password" class="text" placeholder="新しいパスワードの入力" required="required"><br>
	                    <input type="password" name="check" class="text" placeholder="新しいパスワードをもう一度入力" required="required">
	                    <button type="submit" class="square_btn" value="0" name="dif">変更</button>
	                </div>
                </form>
                <form action="User_Setting" method="post">
	                <div id="javascript:mailForm.summit()" class="contents">
	                    <div class="title">
	                        <h2>Mail</h2><p><%=request.getAttribute("cautionMail") %></p><br>
	                    </div>
	                    <input type="email" name="mail" class="text" placeholder="新しいメールアドレスの入力">
	                    <button type="submit" class="square_btn" value="1" name="dif">変更</button>
	                </div>
                </form>
            </div>
        </div>
    </main>
    <nav>
        <a href="Manager_Timetable" class="navi">
            タイムテーブル
        </a>
        <a href="Manager_Question_answer" class="navi">
            質問フォーム
        </a>
        <a href="Manager_Ankeeto" class="navi">
            アンケート機能
        </a>
        <a href="Manager_Setting" class="navi">
            設 定
        </a>
    </nav>
    <footer>
    </footer>
</body>

</html>
