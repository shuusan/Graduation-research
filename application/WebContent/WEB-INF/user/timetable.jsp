<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="dto.User_DTO,java.util.ArrayList,java.util.HashMap,java.util.Date"%>
<%
    @SuppressWarnings("unchecked")
    ArrayList<User_DTO> humburger_list = (ArrayList<User_DTO>)session.getAttribute("hl");

    @SuppressWarnings("unchecked")
    ArrayList<User_DTO> mel = (ArrayList<User_DTO>)session.getAttribute("mel");

    @SuppressWarnings("unchecked")
    HashMap<Integer, ArrayList<User_DTO>> bel = (HashMap<Integer, ArrayList<User_DTO>>)session.getAttribute("bel");

    @SuppressWarnings("unchecked")
    HashMap<Integer,ArrayList<Integer>> interval = (HashMap<Integer,ArrayList<Integer>>)session.getAttribute("interval");
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
<title>メインページ</title>
</head>

<body>
	<header>
		<div id="nav-drawer">
			<input id="nav-input" type="checkbox" class="nav-unshown"> <label
				id="nav-open" for="nav-input"><span></span></label> <label
				class="nav-unshown" id="nav-close" for="nav-input"></label>
			<div id="nav-content">
				<%for (int i = 0; i < humburger_list.size(); i++) {

						if (0 == i) {%>
							<a href="#" class="nav" id="here"><%=humburger_list.get(i).getText()%></a>

						<%} else {%>

				<a href="#" class="nav"><%=humburger_list.get(i).getText()%></a>
				<%
						}
					}
				%>
			</div>
		</div>
		<p id="timer">
			<span id="timertext">2018年11月9日 10時8分8秒</span><br>
			<script>// <![CDATA[
                function showClock2() {
                  var dd = new Date();
                  var text = dd.getFullYear() + "/";
                  text += (dd.getMonth() + 1) + "/";
                  text += dd.getDate();
                  text += " ";
                  text += dd.getHours() + ":";
                  text += dd.getMinutes() + ":";
                  text += dd.getSeconds();
                  document.getElementById("timertext").innerHTML = text;
                }

                showClock2();  // まずは初期表示

                setTimeout(function () {

                  showClock2();  // 最初のジャスト1秒表示
                  setInterval(showClock2, 1000); // 以降のジャスト1秒表示
                }, 1000 - (new Date()).getUTCMilliseconds());
            </script>
		</p>
	</header>
	<!--
timetable階層構造
    main {
        #subevent-area {
            #subevent-brank
            .subevent-title
        }
        #event {
            #time-area {
                .constant-hour
            }
            #event-area {
                .event-contents {
                    .event-button {
                        .event-division {
                            .event-title
                            <p>
                        }
                    }
                }
            }
        }
    }
-->
	<main>
	<div id="subevent-area" style="width: calc(20px + 300px * <%=mel.size() %>)">
		<p id="subevent-blank"></p>
		<%for(int i =0; i < mel.size(); i++){%>
		<p class="subevent-title"><%=mel.get(i).getText() %></p>
		<%} %>
	</div>
	<div id="event" style="width: calc(20px + 300px * <%=mel.size() %>)">
		<div id="time-area">
			<%for(int i = 0; i<24; i++){ %>
			<p class="constant-hour"><%=i%></p>
			<%} %>
		</div>
		<div id="event-area" style="width: calc(300px * <%=mel.size() %>)">
			<%for(int i = 1; i<mel.size()+1; i++){%>
			<div class="event-contents">
				<%
				int count = 0;
				for(int j = 0; j < bel.get(i).size(); j++){
				if(0 == (interval.get(i).get(count+1)) || count == 0){%>
						<button type="button" class="event-button" style="height: <%=interval.get(i).get(count)%>px">
							<p class="event-time"><%=interval.get(i).get(count+2)%></p>
							<div class="event-division">
								<p class="event-title" id="event1"><%=bel.get(i).get(j).getText() %></p>
								<p><%=bel.get(i).get(j).getText1()+bel.get(i).get(j).getNum()%></p>
							</div>
						</button>
					<%}else{%>
						<button type="button" class="event-button" style="height: <%=interval.get(i).get(count)%>px; margin: 0px">
						</button>
				<%}
				count = count + 3;
				} %>
			</div>
			<%}%>
		</div>
	</div>
	<div id="date-drawer">
		<input id="date-input" type="checkbox" class="date-unshown"> <label
			id="date-open" for="date-input"><span></span></label> <label
			class="date-unshown" id="date-close" for="date-input"></label>
		<div id="date-content">
			<div id="datepicker"></div>
		</div>
	</div>
	</main>
	<nav>
		<a href="Manager_Timetable" class="navi"> タイムテーブル </a> <a
			href="Manager_Question_answer" class="navi"> 質問フォーム </a> <a
			href="Manager_Ankeeto" class="navi"> アンケート機能 </a> <a
			href="Manager_Setting" class="navi"> 設 定 </a>
	</nav>
	<footer> </footer>
</body>
<script type="text/javascript" src="js/syncscroll.js"></script>
<script type="text/javascript" src="js/datepicker.js"></script>
<script type="text/javascript" src="realtime.js"></script>

</html>
