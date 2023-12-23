<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>データ登録</title>
    <link href="css/style.css" rel="stylesheet">
    <?php
        ini_set('display_errors', "On");
        require_once('funcs.php');
        $activeTab = $_GET['tab'] ?? 'register';
        $pdo = db_conn();
        $id = $_GET['id'] ?? null;
        $result = ['name' => '', 'url' => '', 'comment' => ''];

        if ($id) {
            // Fetch existing data
            $stmt = $pdo->prepare('SELECT * FROM gs_bm_table WHERE id = :id;');
            $stmt->bindValue(':id', $id, PDO::PARAM_INT);
            $status = $stmt->execute();

            if ($status === false) {
                $error = $stmt->errorInfo();
                exit('SQLError:' . print_r($error, true));
            } else {
                $result = $stmt->fetch();
            }
        }
    ?>
</head>

<body>
    <div class="tab-001">
            <label>
                <input type="radio" name="tab-001" <?= $activeTab == 'register' ? 'checked' : '' ?>>
                データ登録
            </label>
            <div>
                <form method="post" action="<?= $id ? 'update.php' : 'insert.php' ?>">
                <h2>ブックマークアプリ</h2>
                <label>書籍名：<input type="text" name="name" value="<?= h($result['name']) ?>"></label><br>
                <label>書籍URL:<input type="text" name="url" value="<?= h($result['url']) ?>"></label><br>
                <label>書籍コメント<textArea name="comment" rows="4" cols="40"><?= h($result['comment']) ?></textArea></label><br>
                <?php if ($id): ?>
                    <input type="hidden" name="id" value="<?= h($result['id']) ?>">
                <?php endif; ?>
                <div class = submit-button-container><input type="submit" value="送信"></div>
                </form>
            </div>
            <label>
            <input type="radio" name="tab-001" <?= $activeTab == 'list' ? 'checked' : '' ?>>
            データ一覧
            </label>
            <div>    
                <?php require_once('select.php');?>
            </div>
    </div>
</body>

</html>
