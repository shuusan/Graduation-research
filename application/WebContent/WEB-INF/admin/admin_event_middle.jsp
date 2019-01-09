<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="event_select.css">
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
    </header>
    <main>
        <form action="Admin_event_form" method="post">
            <div id="acbtn">
                <input type="text" placeholder="イベント名を入力" class="textfield" name="resitext">
                <button type="submit" class="button" value="resist" name="btn">新規追加</button><br>
                <input type="text" placeholder="キーワードを入力" class="textfield">
                <button type="submit" class="button" value="search" name="btn">検索</button>
                <button type="submit" class="button" value="delete" name="btn">削除</button>
            </div>
            <table>
                <tbody>
                    <tr>
                        <td style="width: 50px"><input type="checkbox" value="" name=""></td>
                        <td>バスケ</td>
                        <td>
                            <h5>開始時間</h5><br>
                            <div class="datetime">
                                <input type="date" value="2018-11-12">
                                <select name="s-hour" id="">
                                    <option value="10" selected>10時</option>
                                    <option value="20" selected>10時</option>
                                </select>
                                <select name="s-minutes" id="">
                                    <option value="30" selected>30分</option>
                                </select>
                            </div>
                        </td>
                        <td>
                            <h5>終了時間</h5><br>
                            <div class="datetime">
                                <input type="date" value="2018-11-12">
                                <select name="e-hour" id="">
                                    <option value="10" selected>10時</option>
                                </select>
                                <select name="e-minutes" id="">
                                    <option value="30" selected>30分</option>
                                    <option value="45" selected>45分</option>
                                </select>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </main>
    <footer>
    </footer>
</body>

</html>
