<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="css/admin/resist_user.css">
    <script src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/choice.js"></script>

</head>

<body onLoad="functionName()">
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
        <div class="area">
            <div class="ht">
                <p>
                    新規登録
                </p>
            </div>
            <form action="#" method="post" class="pull">
                学籍番号<br>
                <input type="number" name="banngou" placeholder="学籍番号" class="textfield" maxlength='50' required><br>
                名前<br>
                <input type="text" name="namae" placeholder="名前" class="textfield" maxlength='30' required><br>
                メールアドレス<br>
                <input type="email" name="mail" placeholder="xxx@xx.xx.xxx" class="textfield" maxlength='50' required><br>
                学年<br>
                <select class="year" name="foo">
                    <option value="0" selected="selected">学年を選択</option>
                    <option value="1年">1年</option>
                    <option value="2年">2年</option>
                    <option value="3年">3年</option>
                    <option value="4年">4年</option>
                </select><br>
                学科<br>
                <select class="parent1" name="foo">
                    <option value="" selected="selected">学科を選択</option>
                    <option value="情報システム科">情報システム科</option>
                    <option value="総合システム工学科">総合システム工学科</option>
                    <option value="ネットワークセキュリティ科">ネットワークセキュリティ科</option>
                    <option value="高度情報工学科">高度情報工学科</option>
                    <option value="情報ビジネス科">情報ビジネス科</option>
                    <option value="会計ビジネス科">会計ビジネス科</option>
                    <option value="デザイン科">デザイン科</option>
                    <option value="総合デザイン科">総合デザイン科</option>
                </select><br>
                コース<br>
                <select class="children1" name="bar" disabled>
                    <option value="" selected="selected">コースを選択</option>
                    <option value="システムエンジニアコース" data-val="情報システム科">システムエンジニアコース</option>
                    <option value="スマートフォンアプリ開発コース" data-val="情報システム科">スマートフォンアプリ開発コース</option>
                    <option value="ネットワークエンジニアコース" data-val="ネットワークセキュリティ科">ネットワークエンジニアコース</option>
                    <option value="情報セキュリティコース" data-val="ネットワークセキュリティ科">情報セキュリティコース</option>
                    <option value="WEBプログラマコース" data-val="総合システム工学科">WEBプログラマコース</option>
                    <option value="組込みシステムコース" data-val="総合システム工学科">組込みシステムコース</option>
                    <option value="ゲームプログラマコース" data-val="総合システム工学科">ゲームプログラマコース</option>
                    <option value="高度情報工学科" data-val="高度情報工学科">高度情報工学科</option>
                    <option value="情報ビジネスコース" data-val="情報ビジネス科">情報ビジネスコース</option>
                    <option value="公共ビジネスコース" data-val="情報ビジネス科">公共ビジネスコース</option>
                    <option value="会計ビジネスコース" data-val="会計ビジネス科">会計ビジネスコース</option>
                    <option value="会計エキスパートコース" data-val="会計ビジネス科">会計エキスパートコース</option>
                    <option value="グラフィックデザインコース" data-val="デザイン科">グラフィックデザインコース</option>
                    <option value="アニメ・マンガコース" data-val="デザイン科">アニメ・マンガコース</option>
                    <option value="CGクリエイトコース" data-val="デザイン科">CGクリエイトコース</option>
                    <option value="建築インテリアコース" data-val="デザイン科">建築インテリアコース</option>
                    <option value="総合デザインコース" data-val="総合デザイン科">総合デザインコース</option>
                </select>
                <script>
                    var $children = $('.children1');
                    var original = $children.html();
                    $('.parent1').change(function() {
                        var val1 = $(this).val();
                        $children.html(original).find('option').each(function() {
                            var val2 = $(this).data('val');
                            if (val1 != val2) {
                                $(this).not(':first-child').remove();
                            }
                        });
                        if ($(this).val() == "") {
                            $children.attr('disabled', 'disabled');
                        } else {
                            $children.removeAttr('disabled');
                        }
                    });
                </script>
                <br>
                <div class="button">
                    <input type="submit" value="登録する" style="width:100px;height:50px">
                </div>
            </form>
        </div>

        <div class="area">
            <div class="ht">
                <p>
                    前回の登録内容
                </p>
            </div>
            <form action="#" method="post" class="pull">
                学籍番号<br>
                <input type="number" name="banngou" placeholder="学籍番号" class="textfield" maxlength='50' required><br>
                名前<br>
                <input type="text" name="namae" placeholder="名前" class="textfield" maxlength='30' required><br>
                メールアドレス<br>
                <input type="email" name="mail" placeholder="xxx@xx.xx.xxx" class="textfield" maxlength='50' required><br>
                学年<br>
                <select class="year" name="foo">
                    <option value="0" selected="selected">学年を選択</option>
                    <option value="1年">1年</option>
                    <option value="2年">2年</option>
                    <option value="3年">3年</option>
                    <option value="4年">4年</option>
                </select><br>
                学科<br>
                <select class="parent2" name="foo">
                    <option value="" selected="selected">学科を選択</option>
                    <option value="情報システム科">情報システム科</option>
                    <option value="総合システム工学科">総合システム工学科</option>
                    <option value="ネットワークセキュリティ科">ネットワークセキュリティ科</option>
                    <option value="高度情報工学科">高度情報工学科</option>
                    <option value="情報ビジネス科">情報ビジネス科</option>
                    <option value="会計ビジネス科">会計ビジネス科</option>
                    <option value="デザイン科">デザイン科</option>
                    <option value="総合デザイン科">総合デザイン科</option>
                </select><br>
                コース<br>
                <select class="children2" name="bar" disabled>
                    <option value="" selected="selected">コースを選択</option>
                    <option value="システムエンジニアコース" data-val="情報システム科">システムエンジニアコース</option>
                    <option value="スマートフォンアプリ開発コース" data-val="情報システム科">スマートフォンアプリ開発コース</option>
                    <option value="ネットワークエンジニアコース" data-val="ネットワークセキュリティ科">ネットワークエンジニアコース</option>
                    <option value="情報セキュリティコース" data-val="ネットワークセキュリティ科">情報セキュリティコース</option>
                    <option value="WEBプログラマコース" data-val="総合システム工学科">WEBプログラマコース</option>
                    <option value="組込みシステムコース" data-val="総合システム工学科">組込みシステムコース</option>
                    <option value="ゲームプログラマコース" data-val="総合システム工学科">ゲームプログラマコース</option>
                    <option value="高度情報工学科" data-val="高度情報工学科">高度情報工学科</option>
                    <option value="情報ビジネスコース" data-val="情報ビジネス科">情報ビジネスコース</option>
                    <option value="公共ビジネスコース" data-val="情報ビジネス科">公共ビジネスコース</option>
                    <option value="会計ビジネスコース" data-val="会計ビジネス科">会計ビジネスコース</option>
                    <option value="会計エキスパートコース" data-val="会計ビジネス科">会計エキスパートコース</option>
                    <option value="グラフィックデザインコース" data-val="デザイン科">グラフィックデザインコース</option>
                    <option value="アニメ・マンガコース" data-val="デザイン科">アニメ・マンガコース</option>
                    <option value="CGクリエイトコース" data-val="デザイン科">CGクリエイトコース</option>
                    <option value="建築インテリアコース" data-val="デザイン科">建築インテリアコース</option>
                    <option value="総合デザインコース" data-val="総合デザイン科">総合デザインコース</option>
                </select>
                <br>
                <script>
                    var $children = $('.children2');
                    var original = $children.html();
                    $('.parent2').change(function() {
                        var val1 = $(this).val();
                        $children.html(original).find('option').each(function() {
                            var val2 = $(this).data('val');
                            if (val1 != val2) {
                                $(this).not(':first-child').remove();
                            }
                        });
                        if ($(this).val() == "") {
                            $children.attr('disabled', 'disabled');
                        } else {
                            $children.removeAttr('disabled');
                        }
                    });
                </script>
                <div class="button">
                    <input type="submit" value="修正する" style="width:100px;height:50px">
                </div>
            </form>
        </div>
    </main>
</body>

</html>
