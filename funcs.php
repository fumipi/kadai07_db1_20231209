<?php
//共通に使う関数を記述

//必要なパッケージを自動で読み込むための記述
require __DIR__ . '/vendor/autoload.php';
//phpdotenvの機能を使って__DIR__=ファイルの存在する階層にある.envを指定する
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__);
//.env中の設定値をロードし、$_ENVとして使用できるようにする
$dotenv->load();

//XSS対応（ echoする場所で使用！それ以外はNG ）
function h($str){
    return htmlspecialchars($str, ENT_QUOTES);
  };

//DB接続関数：db_conn()
function db_conn(){
    try {
        $db_name = $_ENV['DB_NAME']; //データベース名
        $db_id   = $_ENV['DB_USER']; //アカウント名
        $db_pw   = $_ENV['DB_PASS']; //パスワード：MAMPは'root'
        $db_host = $_ENV['DB_HOST']; //DBホスト
        return $pdo = new PDO('mysql:dbname=' . $db_name . ';charset=utf8;host=' . $db_host, $db_id, $db_pw);
    } catch (PDOException $e) {
        exit('DB Connection Error:' . $e->getMessage());
    }
}

//SQLエラー関数：sql_error($stmt)


//リダイレクト関数: redirect($file_name)
function redirect($file_name){
    header("Location: $file_name");
    exit();
}