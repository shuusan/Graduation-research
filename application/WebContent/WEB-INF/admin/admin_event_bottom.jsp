<%@page import="dto.Admin_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    @SuppressWarnings("unchecked")
    ArrayList<Admin_DTO> list = (ArrayList<Admin_DTO>)request.getAttribute("btmEvelist");
    String[] array = (String[]) session.getAttribute("en");
    %>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/admin/admin_btmEve.css">
    <title>メインページ</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/ev-plus.js"></script>
    <script type="text/javascript" src="js/midEve_change.js"></script>
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
            <div id="label">
                <a href="Admin_event_form" id="te"><%=array[0] %></a>
                <label for="me" id="slash">/</label>
                <a href="Admin_event_middle" id="me"><%=array[1] %></a>
            </div>

            <form action="Admin_event_bottom" id="control" method="post">
                <input type="text" id="s-txt" placeholder="イベントの検索" name="txt">
                <button type="submit" value="search" class="btn" id="s-btn" name="btn" form="control">検索</button>
                <button type="submit" value="delete" class="btn" name="btn" form="left">チェック項目の削除</button>
                <button type="submit" value="update" class="btn" name="btn" form="left">変更の確定をする</button>
                <button type="submit" value="resist" class="btn" name="btn" form="right">下記を登録する！</button>
            </form>

            <div id="contents">
                <form action="Admin_event_bottom" class="event" id="left" method="post">
                <%for(int i=0; i<list.size(); i++){
                	String[] sArray = list.get(i).getArray()[1].split(":");
            		String[] eArray = list.get(i).getArray1()[1].split(":");
                %>
	                    <div class="one-event">
	                    	<input type="text" id="id<%=i%>" class="count" name="id<%=i%>" value="<%=list.get(i).getNum() %>">
	                        <input type="text" name="ev-title<%=i %>" class="ev-title" placeholder="イベント名" value="<%=list.get(i).getText()%>">
	                        <input type="checkbox" value="<%=list.get(i).getNum() %>" name="ckb<%=i%>" class="cbx">
	                        <div class="evtime-area">
	                            <div class="date-time">
	                                <label class="date">
	                                    <input type="date" name="s-date<%=i %>" value="<%=list.get(i).getArray()[0]%>">
	                                </label>
	                                <br>
	                                <select class="hour" name="s-hour<%=i%>" required>
										<option value="<%=sArray[0]%>" selected><%=sArray[0]%></option>
										<%for (int j = 0; j < 24; j++) {%>
											<option value="<%=j%>"><%=j%></option>
										<%}%>
									</select>
	                                <p class="time">時</p>
	                                <select class="minutes" name="s-minutes<%=i%>" required>
										<option value="<%=sArray[1]%>"><%=sArray[1]%></option>
										<%for (int j = 0; j < 60; j++) {%>
											<option value="<%=j%>"><%=j%></option>
										<%}%>
									</select>
	                                <p class="time">分</p>
	                            </div>
	                            <div class="date-time">
	                                <label class="date">
	                                    <input type="date" name="e-date<%=i %>" value="<%=list.get(i).getArray1()[0]%>">
	                                </label>
	                                <br>
	                                <select class="hour" name="e-hour<%=i%>" required>
										<option value="<%=eArray[0]%>" selected><%=eArray[0]%></option>
										<%for (int j = 0; j < 24; j++) {%>
											<option value="<%=j%>"><%=j%></option>
										<%}%>
									</select>
	                                <p class="time">時</p>
	                                <select class="minutes" name="e-minutes<%=i%>" required>
										<option value="<%=eArray[1]%>"><%=eArray[1]%></option>
										<%for (int j = 0; j < 60; j++) {%>
											<option value="<%=j%>"><%=j%></option>
										<%}%>
									</select>
	                                <p class="time">分</p>
	                            </div>
	                        </div>
	                        <textarea name="txta<%=i%>" cols="65" rows="10" placeholder="メモ" ><%=list.get(i).getText1()%></textarea>
	                    </div>
                    <%} %>
                </form>
                <form action="Admin_event_bottom" class="event" id="right" method="post">
                <div id="ricon">
                <input type="text" class="count" name="count" value="0">
                <input type="text" class="ev-title" placeholder="イベント名" name="ev-title0">
	                        <div class="evtime-area">
	                            <div class="date-time">
	                                <label class="date">
	                                    <input type="date" name="s-date0">
	                                </label>
	                                <br>
	                                <select class="hour" name="s-hour0" required>
										<%for (int j = 0; j < 24; j++) {%>
											<option value="<%=j%>"><%=j%></option>
										<%}%>
									</select>
	                                <p class="time">時</p>
	                                <select class="minutes" name="s-minutes0" required>
										<%for (int j = 0; j < 60; j++) {%>
											<option value="<%=j%>"><%=j%></option>
										<%}%>
									</select>
	                                <p class="time">分</p>
	                            </div>
	                            <div class="date-time">
	                                <label class="date">
	                                    <input type="date" name="e-date0">
	                                </label>
	                                <br>
	                                <select class="hour" name="e-hour0" required>
	                                <option value="0">0</option>
	                                <option value="1" selected>1</option>
										<%for (int j = 2; j < 24; j++) {%>
											<option value="<%=j%>"><%=j%></option>
										<%}%>
									</select>
	                                <p class="time">時</p>
	                                <select class="minutes" name="e-minutes0" required>
										<%for (int j = 0; j < 60; j++) {%>
											<option value="<%=j%>"><%=j%></option>
										<%}%>
									</select>
	                                <p class="time">分</p>
	                            </div>
	                        </div>
	                        <textarea cols="65" rows="10" placeholder="メモ" name="txta0"></textarea>
                </div>
                </form>
                <button type="button" id="plus" onclick="add();">＋</button>
            </div>
    </main>

    <footer></footer>

</body>

</html>
