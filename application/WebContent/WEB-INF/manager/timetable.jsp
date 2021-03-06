<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import=
	"dto.User_DTO,
	culculator.Calc_con,
	java.util.ArrayList,
	java.util.HashMap"%>
<%
    @SuppressWarnings("unchecked")
    ArrayList<User_DTO> hl = (ArrayList<User_DTO>)session.getAttribute("hl");

    @SuppressWarnings("unchecked")
    ArrayList<User_DTO> mel = (ArrayList<User_DTO>)session.getAttribute("mel");

    @SuppressWarnings("unchecked")
    HashMap<Integer, ArrayList<User_DTO>> bel = (HashMap<Integer, ArrayList<User_DTO>>)session.getAttribute("bel");

    @SuppressWarnings("unchecked")
    HashMap<Integer,ArrayList<Calc_con>> interval = (HashMap<Integer,ArrayList<Calc_con>>)session.getAttribute("interval");
%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/manager/timetable.css">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/jQueryUI-v1.12.1.js"></script>
<!--  カレンダーの日本語化  -->
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"></script>
<script type="text/javascript" src="js/dateSubmit.js"></script>
<script type="text/javascript" src="js/jquery.sidebar.js"></script>
<script type="text/javascript" src="js/sidebar.js"></script>
<script type="text/javascript" src="js/updateText.js"></script>
<title>更新型イベント管理ツール</title>
</head>

<body>
	<header>
		<div id="nav-drawer">
			<input id="nav-input" type="checkbox" class="nav-unshown"> <label
				id="nav-open" for="nav-input"><span></span></label> <label
				class="nav-unshown" id="nav-close" for="nav-input"></label>
			<form action="Connecting" method="post" id="nav-content">
				<%for (int i = 0; i < hl.size(); i++) {
					if (String.valueOf(session.getAttribute("top_eventName")).equals(hl.get(i).getText())) {%>
						<button type="submit" name="hc" class="nav" id="here" value="<%=hl.get(i).getNum()%>"><%=hl.get(i).getText()%></button>
					<%} else {%>
						<button type="submit" name="hc" class="nav" value="<%=hl.get(i).getNum()%>"><%=hl.get(i).getText()%></button>
				<%		}
					}
				%>
			</form>
		</div>
		<p id="date"><%=String.valueOf(session.getAttribute("date")).replaceFirst("-", "年").replaceFirst("-", "月")%>日</p>
		<p id="timer">
			<span id="timertext">2018年11月9日 10時8分</span><br>
			<script>// <![CDATA[
                function showClock2() {
                  var dd = new Date();
                  var text = dd.getHours() + ":";
                  if(9>dd.getMinutes()){
                	  text += "0"+dd.getMinutes();
                  }else{
                	  text += dd.getMinutes();
                  }
                  text += " <%=session.getAttribute("top_eventName")%>"
                  document.getElementById("timertext").innerHTML = text;
                }

                showClock2();  // まずは初期表示

                setTimeout(function () {

                  showClock2();  // 最初のジャスト1秒表示
                  setInterval(showClock2, 1000); // 以降のジャスト1秒表示
                }, 1000 - (new Date()).getUTCMilliseconds());
            </script>
		</p>
		<a href="javascript:UF.submit()" class="square_btn">更新を完了する</a>
	</header>

	<main>
		<div id="subevent-area" style="width: calc(20px + 300px * <%=mel.size() %>)">
			<%if(0!=bel.size()){ %>
				<p id="subevent-blank"></p>
			<%}
			for(int i =0; i < mel.size(); i++){%>
			<p class="subevent-title" id="set<%=i%>"><%=mel.get(i).getText() %></p>
			<%}%>
		</div>
		<%int timeCount=0; %>
		<form id="UF" name="UF" method="post" action="Manager_update">
		<div id="event" style="width: calc(20px + 300px * <%=mel.size() %>)">
			<div id="time-area">
				<%for(int i = interval.get(bel.size()).get(0).getSpace_height(); i < interval.get(bel.size()).get(0).getButton_height()+1; i++){ %>
				<p class="constant-hour"><%=i %></p>
				<%timeCount++;
				} %>
			</div>
			<div id="event-area" style="height: calc(300px * <%=timeCount %>);width: calc(300px * <%=mel.size() %>)">
				<%for(int i = 0; i<bel.size(); i++){%>
				<div class="event-contents" style="height: calc(300px * <%=timeCount %>)">
					<%
					for(int j = 0; j < bel.get(i).size(); j++){
					if(0==bel.get(i).get(j).getNum3()){%>

						<p class="time-brank" style="height: <%=interval.get(i).get(j).getSpace_height()%>px"></p>

						<div id="btn<%=i%><%=j%>" class="btn btn-primary" data-action="open" data-side="right" style="height: <%=interval.get(i).get(j).getButton_height()-1%>px">

								<p class="event-time1" ><%=(10>bel.get(i).get(j).getNum3())?"0"+bel.get(i).get(j).getNum3():bel.get(i).get(j).getNum3()%></p>
								<input type="text" class="visibility" id="timeDATA<%=i%><%=j%>" name="timeDATA<%=i%><%=j%>" value="<%=bel.get(i).get(j).getSb().toString()%>～<%=bel.get(i).get(j).getSb1().toString() %>">

								<div class="event-division">
									<p class="event-title" id="title<%=i%><%=j%>"><%=bel.get(i).get(j).getText() %></p>
									<input class="visibility"  id="titleDATA<%=i%><%=j%>" name="titleDATA<%=i%><%=j%>" readonly="readonly">

									<p id="contents<%=i%><%=j%>"><%=bel.get(i).get(j).getText1()%></p>
									<input class="visibility" id="contentsDATA<%=i%><%=j%>" name="contentsDATA<%=i%><%=j%>" readonly="readonly">
								</div>
						</div>

					<%}else if(0==interval.get(i).get(j).getSpace_height()){%>

						<div id="btn<%=i%><%=j%>" class="btn btn-primary" data-action="open" data-side="right" style="height: <%=interval.get(i).get(j).getButton_height()-1%>px">

							<p class="event-time1"><%=(10>bel.get(i).get(j).getNum3())?"0"+bel.get(i).get(j).getNum3():bel.get(i).get(j).getNum3()%></p>
							<input type="text" class="visibility" id="timeDATA<%=i%><%=j%>" name="timeDATA<%=i%><%=j%>" value="<%=bel.get(i).get(j).getSb().toString()%>～<%=bel.get(i).get(j).getSb1().toString() %>">

							<div class="event-division">
								<p class="event-title" id="title<%=i%><%=j%>"><%=bel.get(i).get(j).getText() %></p>
								<input type="text" class="visibility" id="titleDATA<%=i%><%=j%>" name="titleDATA<%=i%><%=j%>" readonly="readonly">

								<p id="contents<%=i%><%=j%>"><%=bel.get(i).get(j).getText1()%></p>
								<input type="text" class="visibility" id="contentsDATA<%=i%><%=j%>" name="contentsDATA<%=i%><%=j%>" readonly="readonly">
							</div>
						</div>

					<%}else{%>
						<p class="time-brank" style="height: <%=interval.get(i).get(j).getSpace_height()%>px"></p>

						<div id="btn<%=i%><%=j%>" class="btn btn-primary" data-action="open" data-side="right" style="height: <%=interval.get(i).get(j).getButton_height()-1%>px">
							<p class="event-time1"><%=(10>bel.get(i).get(j).getNum3())?"0"+bel.get(i).get(j).getNum3():bel.get(i).get(j).getNum3()%></p>
							<input type="text" class="visibility" id="timeDATA<%=i%><%=j%>" name="timeDATA<%=i%><%=j%>"value="<%=bel.get(i).get(j).getSb().toString()%>～<%=bel.get(i).get(j).getSb1().toString() %>">

							<div class="event-division">
								<p class="event-title" id="title<%=i%><%=j%>"><%=bel.get(i).get(j).getText() %></p>
								<input type="text" class="visibility" id="titleDATA<%=i%><%=j%>" name="titleDATA<%=i%><%=j%>" readonly="readonly">

								<p id="contents<%=i%><%=j%>"><%=bel.get(i).get(j).getText1()%></p>
								<input type="text" class="visibility" id="contentsDATA<%=i%><%=j%>" name="contentsDATA<%=i%><%=j%>" readonly="readonly">
							</div>
						</div>
					<%}
					}%>
				</div>
				<%}%>
			</div>
		</div>
		<div id="data">
		<%for(int i=0; i<bel.size();i++){
			for(int j=0; j<bel.get(i).size();j++){%>
			<input class="visibility" id="data<%=i%><%=j%>" name="data<%=i%><%=j%>" value="<%=bel.get(i).get(j).getNum()%>">
			<%}
		}%>
	</div>
    	</form>
		<div id="date-drawer">
			<input id="date-input" type="checkbox" class="date-unshown"> <label
				id="date-open" for="date-input"><span></span></label> <label
				class="date-unshown" id="date-close" for="date-input"></label>
			<form action="Manager_Timetable" method="post" id="date-content" name="form1">
				<div id="datepicker"></div>
				<input type="text" id="display" name="date" readonly="readonly" >
			</form>
		</div>
		<div class="sidebars">
            <div class="sidebar right">
                <div class="bar-head">
                    <p class="silabel">イベント詳細</p>
                    <a class="btn btn-danger" data-action="close" data-side="right">
                        <img src="photo/close.png" alt="close" class="close">
                    </a>
                </div>
                <div class="bar-body">
                	<p class="bar-event"></p>
                    <textarea class="bar-title" name="bar-event" cols="100" rows="100"></textarea>
                    <textarea class="bar-time" name="bar-event" cols="100" rows="100"></textarea>
                    <textarea class="bar-contents" name="bar-event" cols="100" rows="100"></textarea>
                </div>
            </div>
        </div>
	</main>
	<nav>
        <a href="Manager_Timetable" class="navi">
            タイムテーブル
        </a>
        <a href="Manager_Question_answer" class="navi">
            回答フォーム
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
<script type="text/javascript" src="js/syncscroll.js"></script>
<script type="text/javascript" src="js/datepicker.js"></script>

</html>