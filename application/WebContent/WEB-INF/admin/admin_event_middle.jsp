<%@page import="dto.Admin_DTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    @SuppressWarnings("unchecked")
    ArrayList<Admin_DTO> list = (ArrayList<Admin_DTO>) request.getAttribute("midEvelist");
    %>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/admin/admin_midEve.css">
    <title>更新型イベント管理ツール</title>
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
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
        <form action="Admin_event_middle" method="post">
            <div id="acbtn">
            <input type="text" placeholder="キーワードを入力(イベント名)" class="textfield" name="keyword">
                <button type="submit" class="button" value="search" name="btn">検索</button>
                <button type="submit" class="button" value="delete" name="btn">削除</button>
                <button type="submit" class="button" value="update" name="btn">更新</button>
	            <h5 style="color: red"><%=(null!=request.getAttribute("alert"))?request.getAttribute(""):"　" %></h5>
	            <div id="resist">
	            <input type="text" placeholder="イベント名を入力" id="txtf" class="textfield"
						name="resitext">
					<br>
					<div class="time">
						<h5>開始時間</h5>
						<br>
						<div class="datetime">
							<input type="date" class="date" name="s-date">
							<select class="hour" name="s-hour" required>
								<option value="0" selected>0時</option>
								<%for (int j = 1; j < 24; j++) {%>
									<option value="<%=j%>"><%=j%>時</option>
								<%}%>
							</select>
							<select class="minutes" name="s-minutes" required>
								<option value="00" selected>0分</option>
								<%for (int j = 1; j < 60; j++) {%>
									<option value="<%=j%>"><%=j%>分</option>
								<%}%>
							</select>
						</div>
					</div>
					<div class="time">
						<h5>終了時間</h5>
						<br>
						<div class="datetime">
							<input type="date" class="date" name="e-date">
							<select class="hour" name="e-time" required>
								<option value="00">0時</option>
								<option value="1" selected>1時</option>
								<%for (int j = 2; j < 24; j++) {%>
									<option value="<%=j%>"><%=j%>時</option>
								<%}%>
							</select>
							<select class="minutes" name="e-minutes" required>
								<option value="0" selected>0分</option>
								<%for (int j = 0; j < 60; j++) {%>
									<option value="<%=j%>"><%=j%>分</option>
								<%}%>
							</select>
						</div>
					</div>
					<button type="submit" class="button" value="resist" name="btn" id="resibtn">登録</button>
				</div>

            </div>
            <table>
                <tbody>
                <%
                	for (int i = 0; i < list.size(); i++) {
                		String[] sArray = list.get(i).getArray()[1].split(":");
                		String[] eArray = list.get(i).getArray1()[1].split(":");
                %>
                    <tr>
                        <td style="width: 50px"><input type="checkbox" value="<%=list.get(i).getNum() %>" name="ckb<%=i%>"></td>
                        <td><button type="submit" class="midlink" value="<%=list.get(i).getNum() %>" name="btn"><%=list.get(i).getText()%></button></td>
                        <td>
                        <input type="text" id="id<%=i %>" name="id<%=i %>" class="id" value="<%=list.get(i).getNum() %>">
                            <h5>開始時間</h5><br>
                            <div class="datetime">
                                <input type="date" name="s-date<%=i %>" value="<%=list.get(i).getArray()[0] %>" required="required">
                                <select name="s-hour<%=i %>" id="s-hour<%=i %>" class="hour">
                                    <option value="<%=sArray[0] %>" selected><%=sArray[0] %>時</option>
                                    <%for(int j=0; j<24; j++){ %>
                                    	<option value="<%=j %>"><%=j %>時</option>
                                    <%} %>
                                </select>
                                <select name="s-minutes<%=i %>" id="s-minutes<%=i %>"  class="minutes">
                                    <option value="<%=sArray[1] %>" selected><%=sArray[1] %>分</option>
                                    <option value="00">0分</option>
                                	<%for(int j=1; j<60; j++){ %>
                                    	<option value="<%=j %>"><%=j %>分</option>
                                    <%} %>
                                </select>
                            </div>
                        </td>
                        <td>
                            <h5>終了時間</h5><br>
                            <div class="datetime">
                                <input type="date" name="e-date<%=i %>" value="<%=list.get(i).getArray1()[0] %>" required="required">
                                <select name="e-hour<%=i %>"  id="e-hour<%=i %>" class="hour">
                                    <option value="<%=eArray[0] %>" selected><%=eArray[0] %>時</option>
                                    <%for(int j=0; j<24; j++){ %>
                                    	<option value="<%=j %>"><%=j %>時</option>
                                    <%} %>
                                </select>
                                <select name="e-minutes<%=i %>"  id="e-minutes<%=i %>" class="minutes">
                                    <option value="<%=eArray[1] %>" selected><%=eArray[1] %>分</option>
                                	<option value="00">0分</option>
                                	<%for(int j=1; j<60; j++){ %>
                                    	<option value="<%=j %>"><%=j %>分</option>
                                    <%} %>
                                </select>
                            </div>
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
