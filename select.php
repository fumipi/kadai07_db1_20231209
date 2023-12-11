<?php
//1.  DB接続します
require_once('funcs.php');

try {
  //Password注意。MAMP='root'　XAMPP=''
  $pdo = new PDO('mysql:dbname=gs_db1; charset=utf8; host=localhost', 'root', '');
} catch (PDOException $e) {
  exit('DBConnectError:' . $e->getMessage());
}

//２．データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table");
$status = $stmt->execute();

//３．データ表示
$view="";
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $date = new DateTime($result['date']);
    $formattedDate = $date->format('Y-m-d');
    $view .= '<tr>';
    $view .= '<td class = "first-column">' . h($formattedDate). '</td>';
    // $thumbnailUrl = 'path_to_your_placeholder_image.jpg'; 
    // $view .= '<td><img src="' . $thumbnailUrl . '" alt="Thumbnail" style="width:100px;height:100px;"></td>';
    $view .= '<td><a href="' . h($result['url']) . '" target="_blank">' . h($result['name']) . '</a></td>';
    $view .= '<td>' . h($result['comment']) . '</td>';
    $view .= '</tr>';
}
}
?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ブックマーク表示</title>
<link rel="stylesheet" href="css/range.css">
</head>
<body>
<div>
    <table><?= $view ?></table>
</div>
</body>
</html>
