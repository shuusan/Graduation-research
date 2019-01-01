<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/admin/tag.css">
    <!--
<script type="text/javascript" src="js/modal.js"></script>
<script type="text/javascript" src="js/image_icon.js"></script>
-->
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/imageDrain.js"></script>
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
        <div id="search">
            <input type="text" placeholder="キーワードを入力" id="textfield">
            <button type="submit" id="button">検索</button>
            <button type="button" class="button">更新</button>
            <button type="button" class="button">削除</button>
        </div>

        <table>
            <thead>
                <tr>
                    <th class="item_head">タグ一覧</th>
                    <th width="15px"></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td class="item_body">
                        <div class="tool">
                            <input type="checkbox" class="check">
                            <!--                            <input type="image" src="image/camera1.png" class="camera" onclick="modalOpen()">-->
                        </div>
                        <img src="image/icon_138200_256.png" class="img" id="image">
                        <div>
                            <input type="text" class="tagname" value="時間タグ">
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <div id="registration_area">
            <h1>新規タグ作成</h1>
            <form action="Admin_tag" method="post" name="form1">
                <input type="file" id="file" name="img" required>
                <input type="text" placeholder="タグ名を入力してください" class="textfield" name="tagName" id="tagName" required>
                <a href="javascript:form1.submit()" id="registration_button">登録</a>
            </form>
        </div>
        <!-- モーダルウインドウのエリア -->
        <!--
        <div id="modalArea" class="modalNoDisp">
            <div class="modalWindow">
-->
        <!--                ここがウインドウとなります-->
        <!--
<h4>タグを選んでください</h4>
<div id="icon_scroll">
    <a href="javascript:void(0);" onclick="LinkClick(0);"><img src="image/icon_142460_256.png" class="icon"></a>
    <a href="javascript:void(0);" onclick="LinkClick(1);"><img src="image/icon_141850_256.png" class="icon"></a>
    <a href="javascript:void(0);" onclick="LinkClick(2);"><img src="image/icon_141860_256.png" class="icon"></a>
    <a href="javascript:void(0);" onclick="LinkClick(3);"><img src="image/icon_142030_256.png" class="icon"></a>
    <a href="javascript:void(0);" onclick="LinkClick(4);"><img src="image/icon_142150_256.png" class="icon"></a>
    <a href="javascript:void(0);" onclick="LinkClick(5);"><img src="image/icon_138200_256.png" class="icon"></a>
    <a href="javascript:void(0);" onclick="LinkClick(6);"><img src="image/icon_142530_256.png" class="icon"></a>
    <a href="javascript:void(0);" onclick="LinkClick(7);"><img src="image/icon_147540_256.png" class="icon"></a>
    <a href="javascript:void(0);" onclick="LinkClick(8);"><img src="image/shedule.png" class="icon"></a>
</div>
<input type="button" value="閉じる" onclick="modalClose()">
</div>
</div>
-->
    </main>

    <footer>
    </footer>
</body>

</html>
