<?php
require_once('funcs.php');
$pdo = db_conn();

//1. POSTデータ取得
$name = $_POST['name'];
$furigana = $_POST['furigana'];
$email = $_POST['email'];
$tel = $_POST['tel'];
$content = $_POST['content'];


//３．データ登録SQL作成
$stmt = $pdo->prepare(
    'INSERT INTO
        gs_an_table(
            name, furigana, email, tel, content, indate
        )
    VALUES (
            :name, :furigana, :email, :tel, :content, now()
        );'
);

// 数値の場合 PDO::PARAM_INT
// 文字の場合 PDO::PARAM_STR
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':furigana', $furigana, PDO::PARAM_STR);
$stmt->bindValue(':email', $email, PDO::PARAM_STR);
$stmt->bindValue(':tel', $tel, PDO::PARAM_INT); //PARAM_INTなので注意
$stmt->bindValue(':content', $content, PDO::PARAM_STR);
$status = $stmt->execute(); //実行

//４．データ登録処理後
if ($status === false) {
    //*** function化する！******\
    $error = $stmt->errorInfo();
    exit('SQLError:' . print_r($error, true));
} else {
    //*** function化する！*****************
    header('Location: index.php');
    exit();
}
