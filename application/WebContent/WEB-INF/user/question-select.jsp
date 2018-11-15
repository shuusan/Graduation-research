<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/user/question-select.css">
    <title>メインページ</title>
</head>

<body>
    <header>
        <ul class="breadcrumb">
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="User_Question_common" itemprop="url">
                    <span itemprop="title">>質問-メインページ</span>
                </a>
            </li>
            <li itemscope="itemscope" itemtype="http://data-vocabulary.org/Breadcrumb">
                <a href="User_Question_select" itemprop="url">
                    <span itemprop="title">>質問区分選択</span>
                </a>
            </li>
        </ul>
    </header>
    <main>
        <table id="question2">
            <tbody>
                <tr>
                    <th><a href=User_Question_submit><img src="photo/icon_141860_256.png" alt="1"></a></th>
                    <th><a href=User_Question_submit><img src="photo/icon_141850_256.png" alt="2"></a></th>
                    <th><a href=User_Question_submit><img src="photo/icon_141860_256.png" alt="3"></a></th>
                    <th><a href=User_Question_submit><img src="photo/icon_142030_256.png" alt="4"></a></th>
                </tr>
                <tr>
                    <th><a href=User_Question_submit><img src="photo/icon_138200_256.png" alt="5"></a></th>
                    <th><a href=User_Question_submit><img src="photo/icon_141850_256.png" alt="6"></a></th>
                    <th><a href=User_Question_submit><img src="photo/icon_141860_256.png" alt="7"></a></th>
                    <th><a href=User_Question_submit><img src="photo/icon_142030_256.png" alt="8"></a></th>
                </tr>
            </tbody>
        </table>
        <h2 id="label">質問事項を選択して下さい。</h2>
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