<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/manager/timetable.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/jQueryUI-v1.12.1.js"></script>
    <!--  カレンダーの日本語化  -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1/i18n/jquery.ui.datepicker-ja.min.js"></script>
    <title>メインページ</title>
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
        <p id="timer"><span id="timertext">2018年11月9日 10時8分8秒</span><br>
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
        <div id="subevent-area" style="width: calc(20px + 300px * 6)">
            <p id="subevent-blank">　</p>
            <p class="subevent-title">卓球</p>
            <p class="subevent-title">バスケットボール</p>
            <p class="subevent-title">フットサル</p>
            <p class="subevent-title">バレーボール</p>
            <p class="subevent-title">バトミントン</p>
            <p class="subevent-title">ドッチビー</p>
        </div>
        <div id="event" style="width: calc(20px + 300px * 6)">
            <div id="time-area">
                <p class="constant-hour">0</p>
                <p class="constant-hour">1</p>
                <p class="constant-hour">2</p>
                <p class="constant-hour">3</p>
                <p class="constant-hour">4</p>
                <p class="constant-hour">5</p>
                <p class="constant-hour">6</p>
                <p class="constant-hour">7</p>
                <p class="constant-hour">8</p>
                <p class="constant-hour">9</p>
                <p class="constant-hour">10</p>
                <p class="constant-hour">11</p>
                <p class="constant-hour">12</p>
                <p class="constant-hour">13</p>
                <p class="constant-hour">14</p>
                <p class="constant-hour">15</p>
                <p class="constant-hour">16</p>
                <p class="constant-hour">17</p>
                <p class="constant-hour">18</p>
                <p class="constant-hour">19</p>
                <p class="constant-hour">20</p>
                <p class="constant-hour">21</p>
                <p class="constant-hour">22</p>
                <p class="constant-hour">23</p>
            </div>
            <div id="event-area" style="width: calc(300px * 6)">
                <div class="event-contents">
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                </div>
                <div class="event-contents">
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                </div>
                <div class="event-contents">
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                </div>
                <div class="event-contents">
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                </div>
                <div class="event-contents">
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                </div>
                <div class="event-contents">
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                    <button type="button" class="event-button" style="height: 300px">
                        <p class="event-time">00</p>
                        <div class="event-division">
                            <p class="event-title" id="event1">盛岡情報ビジネス専門学校デザイン情報館玄関前集合</p>
                            <p>持ち物:筆記用具</p>
                        </div>
                    </button>
                </div>
            </div>
        </div>
        <div id="date-drawer">
            <input id="date-input" type="checkbox" class="date-unshown">
            <label id="date-open" for="date-input"><span></span></label>
            <label class="date-unshown" id="date-close" for="date-input"></label>
            <div id="date-content">
                <div id="datepicker"></div>
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
<script type="text/javascript" src="js/syncscroll.js"></script>
<script type="text/javascript" src="js/datepicker.js"></script>
<script type="text/javascript" src="realtime.js"></script>

</html>
