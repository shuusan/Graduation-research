<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList,dto.User_DTO"%>
<%
@SuppressWarnings("unchecked")
ArrayList<User_DTO> list = (ArrayList<User_DTO>)request.getAttribute("list");

@SuppressWarnings("unchecked")
ArrayList<User_DTO> humburger_list = (ArrayList<User_DTO>)session.getAttribute("hl");
%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/user/ankeeto.css">
    <title>アンケート</title>
</head>

<body>
    <header>
        <div id="nav-drawer">
			<input id="nav-input" type="checkbox" class="nav-unshown"> <label
				id="nav-open" for="nav-input"><span></span></label> <label
				class="nav-unshown" id="nav-close" for="nav-input"></label>
			<form action="Connecting" method="post" id="nav-content">
				<%for (int i = 0; i < humburger_list.size(); i++) {
					if (Integer.parseInt(String.valueOf(session.getAttribute("here"))) == i) {%>
						<button type="submit" name="hc" class="nav" id="here" value="<%=i%>"><%=humburger_list.get(i).getText()%></button>
					<%} else {%>
						<button type="submit" name="hc" class="nav" value="<%=i%>"><%=humburger_list.get(i).getText()%></button>
				<%		}
					}
				%>
			</form>
		</div>
    </header>
    <main>
        <div id="scroll">
            <%for(int i=0; i<list.size(); i++){ %>
            <div class="form">
	                <h2><%=list.get(i).getText() %></h2>
	                <a href="<%=list.get(i).getText1() %>" class="link"><%=list.get(i).getText1().substring(0,50)+"..." %></a>
	                <p>回収期間：<%=list.get(i).getText2()+" ～ "+list.get(i).getText3()%></p>

            </div>
                <%} %>
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
