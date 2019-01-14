<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/admin/admin_btmEve.css">
    <title>メインページ</title>
    <script src="js/ev-plus.js"></script>
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
        <form action="">
            <div id="label">
                <a href="#" id="te">スポーツ大会</a>
                <label for="me" id="slash">/</label>
                <a href="#" id="me">バスケットボール</a>
            </div>

            <div id="control">
                <input type="text" id="s-txt" placeholder="イベントの検索" name="txt">
                <button type="submit" class="btn" id="s-btn" name="btn">検索</button>
                <button type="submit" class="btn" name="btn">チェック項目の削除</button>
                <button type="submit" class="btn" name="btn">変更の確定をする</button>
                <button type="submit" value="resist" class="btn" name="btn">下記を登録する！</button>
            </div>

            <div id="contents">
                <div class="event" id="left">
                    <div class="one-event">
                        <input type="text" class="ev-title" placeholder="イベント名">
                        <input type="checkbox" value="" name="" class="cbx">
                        <div class="evtime-area">
                            <div class="date-time">
                                <label class="date">
                                    <input type="date">
                                </label>
                                <br>
                                <select name="" class="hour">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                                <p class="time">時</p>
                                <select name="" class="minutes">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                                <p class="time">分</p>
                            </div>
                            <div class="date-time">
                                <label class="date">
                                    <input type="date">
                                </label>
                                <br>
                                <select name="" class="hour">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                                <p class="time">時</p>
                                <select name="" class="minutes">
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                                <p class="time">分</p>
                            </div>
                        </div>
                        <textarea name="" cols="65" rows="10" placeholder="メモ"></textarea>
                    </div>
                </div>
                <div class="event" id="right">
                    <input type="text" class="ev-title" placeholder="イベント名">
                    <div class="evtime-area">
                        <div class="date-time">
                            <label class="date">
                                <input type="date">
                            </label>
                            <br>
                            <select name="" class="hour">
                                <option value="">1</option>
                                <option value="">2</option>
                                <option value="">3</option>
                            </select>
                            <p class="time">時</p>
                            <select name="" class="minutes">
                                <option value="">1</option>
                                <option value="">2</option>
                                <option value="">3</option>
                            </select>
                            <p class="time">分</p>
                        </div>
                        <div class="date-time">
                            <label class="date">
                                <input type="date">
                            </label>
                            <br>
                            <select name="" class="hour">
                                <option value="">1</option>
                                <option value="">2</option>
                                <option value="">3</option>
                            </select>
                            <p class="time">時</p>
                            <select name="" class="minutes">
                                <option value="">1</option>
                                <option value="">2</option>
                                <option value="">3</option>
                            </select>
                            <p class="time">分</p>
                        </div>
                    </div>
                    <textarea name="" cols="65" rows="10" placeholder="メモ"></textarea>
                </div>
                <button type="button" id="plus" onclick="add();">＋</button>
            </div>
        </form>
    </main>

    <footer></footer>

</body>

</html>
