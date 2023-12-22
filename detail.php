<?php
 $id = $_GET['id'];

//1. DB接続します
require_once('funcs.php');
$pdo = db_conn();
 
 //２．データ登録SQL作成
 $stmt = $pdo->prepare('SELECT * FROM gs_bm_table WHERE id = :id;');
 $stmt->bindvalue(':id', $id, PDO::PARAM_INT);
 $status = $stmt->execute();
 
 //３．データ表示
 $view = '';
 if ($status === false) {
     $error = $stmt->errorInfo();
     exit('SQLError:' . print_r($error, true));
 } else {
     $result =$stmt->fetch();
}

?>

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
                <form method="post" action="update.php">
                <h2>ブックマークアプリ</h2>
                <label>書籍名：<input type="text" name="name" value= "<?= h($result['name'])?>"></label><br>
                <label>書籍URL:<input type="text" name="url" value= "<?= h($result['url'])?>"></label><br>
                <label>書籍コメント<textArea name="comment" rows="4" cols="40"><?= h($result['comment'])?></textArea></label><br>
                <input type="hidden" name="id" value="<?= h($result['id'])?>">
                <div class = submit-button-container><input type="submit" value="送信"></div>
                </form>
            </div>
    </div>
</body>

</html>