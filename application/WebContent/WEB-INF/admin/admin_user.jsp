<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <title>メインページ</title>
    <link rel="stylesheet" href="css/admin/adminUser.css">
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
            <input type="submit" value="検索" id="button">
            <input type="button" value="更新" class="button">
            <input type="button" value="削除" class="button">
        </div>

        <table>
            <thead>
                <tr>
                    <th class="space"></th>
                    <th class="item_head">学籍番号</th>
                    <th class="item_head">名前</th>
                    <th id="item_head">学年</th>
                    <th class="item_head">学科</th>
                    <th class="item_head">コース</th>
                    <th class="item_head">メールアドレス</th>
                    <th width="13.5px;"></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox" class="check"></td>
                    <td class="item_body" contentEditable>4171138</td>
                    <td class="item_body" contentEditable>高橋秀瑛</td>
                    <td id="item_body" contentEditable>2</td>
                    <td class="item_body" contentEditable>情報システム科</td>
                    <td class="item_body" contentEditable>システムエンジニア</td>
                    <td class="item_body" contentEditable>s.takahasi1712@...</td>
                </tr>
			</tbody>
        </table>
    </main>

    <footer>
    </footer>
</body>

</html>
