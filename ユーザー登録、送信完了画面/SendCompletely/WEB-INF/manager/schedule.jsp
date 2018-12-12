<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/schedule.css">
    <title>メインページ</title>
</head>

<body>
    <script src="js/jquery-3.2.1.min.js"></script>
    <header>
        <div id="nav-drawer">
            <input id="nav-input" type="checkbox" class="nav-unshown">
            <label id="nav-open" for="nav-input"><span></span></label>
            <label class="nav-unshown" id="nav-close" for="nav-input"></label>
            <div id="nav-content">
                <h1>ユーザーの登録</h1>
                <h1>ユーザーの更新</h1>
                <h1>ユーザーの削除</h1>
                <h1>・</h1>
                <h1>・</h1>
                <h1>・</h1>
            </div>
        </div>
    </header>
    <main>
        <div id="box">
            <!--    ここから内容    -->
            <div class="schedule">
                <div class="scroll">
                    <div class="header">
                        <h2 class="label">バスケ</h2>
                        <select class="select">
                            <option value="バスケ" selected>バスケ</option>
                            <option value="卓球">卓球</option>
                            <option value="バトミントン">バトミントン</option>
                            <option value="バレー">バレー</option>
                            <option value="サッカー">サッカー</option>
                            <option value="しっぽ取り">尻尾取り</option>
                            <option value="障害物競走">障害物競走</option>
                            <option value="全体スケジュール">全体スケジュール</option>
                        </select>
                    </div>
                    <br><br>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 2:00 -</h3>
                        <h3 class="minute">PM 2:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 3:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                </div>
            </div>
            <div class="schedule">
                <div class="scroll">
                    <div class="header">
                        <h2 class="label">バスケ</h2>
                        <select class="select">
                            <option value="バスケ" selected>バスケ</option>
                            <option value="卓球">卓球</option>
                            <option value="バトミントン">バトミントン</option>
                            <option value="バレー">バレー</option>
                            <option value="サッカー">サッカー</option>
                            <option value="しっぽ取り">尻尾取り</option>
                            <option value="障害物競走">障害物競走</option>
                            <option value="全体スケジュール">全体スケジュール</option>
                        </select>
                    </div>
                    <br><br>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 2:00 -</h3>
                        <h3 class="minute">PM 2:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 3:00 -</h3>
                        <h3 class="minute">PM 3:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 4:00 -</h3>
                        <h3 class="minute">PM 4:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                </div>
            </div>
            <div class="schedule">
                <div class="scroll">
                    <div class="header">
                        <h2 class="label">バスケ</h2>
                        <select class="select">
                            <option value="バスケ" selected>バスケ</option>
                            <option value="卓球">卓球</option>
                            <option value="バトミントン">バトミントン</option>
                            <option value="バレー">バレー</option>
                            <option value="サッカー">サッカー</option>
                            <option value="しっぽ取り">尻尾取り</option>
                            <option value="障害物競走">障害物競走</option>
                            <option value="全体スケジュール">全体スケジュール</option>
                        </select>
                    </div>
                    <br><br>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 2:00 -</h3>
                        <h3 class="minute">PM 2:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 3:00 -</h3>
                        <h3 class="minute">PM 3:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                </div>
            </div>
            <div class="schedule">
                <div class="scroll">
                    <div class="header">
                        <h2 class="label">バスケ</h2>
                        <select class="select">
                            <option value="バスケ" selected>バスケ</option>
                            <option value="卓球">卓球</option>
                            <option value="バトミントン">バトミントン</option>
                            <option value="バレー">バレー</option>
                            <option value="サッカー">サッカー</option>
                            <option value="しっぽ取り">尻尾取り</option>
                            <option value="障害物競走">障害物競走</option>
                            <option value="全体スケジュール">全体スケジュール</option>
                        </select>
                    </div>
                    <br><br>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 2:00 -</h3>
                        <h3 class="minute">PM 2:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 3:00 -</h3>
                        <h3 class="minute">PM 3:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                </div>
            </div>
            <div class="schedule">
                <div class="scroll">
                    <div class="header">
                        <h2 class="label">バスケ</h2>
                        <select class="select">
                            <option value="バスケ" selected>バスケ</option>
                            <option value="卓球">卓球</option>
                            <option value="バトミントン">バトミントン</option>
                            <option value="バレー">バレー</option>
                            <option value="サッカー">サッカー</option>
                            <option value="しっぽ取り">尻尾取り</option>
                            <option value="障害物競走">障害物競走</option>
                            <option value="全体スケジュール">全体スケジュール</option>
                        </select>
                    </div>
                    <br><br>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 2:00 -</h3>
                        <h3 class="minute">PM 2:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 3:00 -</h3>
                        <h3 class="minute">PM 3:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 4:00 -</h3>
                        <h3 class="minute">PM 4:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                    <div class="time">
                        <h3 class="hour">- 1:00 -</h3>
                        <h3 class="minute">PM 1:10</h3>
                        <p class="event">体育館集合</p>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!--  遷移タグ  -->
    <nav>
        <a href="schedule.html">
            <h1>スケジュール</h1>
        </a>
        <a href="question-answer.html">
            <h1>回答フォーム</h1>
        </a>
        <a href="anke-to.html">
            <h1>アンケート機能</h1>
        </a>
        <a href="setting.html">
            <h1>設 定</h1>
        </a>
    </nav>
    <footer>
    </footer>
</body>
<script src="js/pulldown.js"> </script>

</html>
