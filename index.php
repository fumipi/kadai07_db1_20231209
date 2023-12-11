<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>データ登録</title>
    <link href="css/style.css" rel="stylesheet">
    <?php
        ini_set('display_errors', "On");
    ?>
</head>

<body>
    <div class="tab-001">
            <label>
                <input type="radio" name="tab-001" checked>
                データ登録
            </label>
            <div>
                <form method="post" action="insert.php">
                <h2>ブックマークアプリ</h2>
                <label>書籍名：<input type="text" name="name"></label><br>
                <label>書籍URL:<input type="text" name="url"></label><br>
                <label>書籍コメント<textArea name="comment" rows="4" cols="40"></textArea></label><br>
                <div class = submit-button-container><input type="submit" value="送信"></div>
                </form>
            </div>
            <label>
                <input type="radio" name="tab-001">
                データ一覧
            </label>
            <div>    
                <?php require_once('select.php');?>
            </div>
    </div>
</body>

</html>
