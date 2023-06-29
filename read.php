<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CrystalMark X24</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <main>
    <h1>CrystalMark X24</h1>
    <div class="container">
        <p style="text-align: center;"><a href="post.php">ベンチマーク結果登録</a></p>  
    <div id="list">
<?php

$dsn      = 'mysql:dbname=testdb;charset=utf8mb4;host=localhost:3306';
$user     = 'root';
$password = '';

// DBへ接続
try{
    $dbh = new PDO($dsn, $user, $password);

    // クエリの実行
    $query = "SELECT * FROM benchmarks";
    $stmt = $dbh->query($query);

    // 表示処理
    while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        $id = $row["id"];
        $platform = $row["platform"];
        $date = $row["date"];
        $cpu = $row["cpu"];
        $system = $row["system"];
        $single = $row["single"];
    
        $message = <<< EOM
        <div class="grid">
            <div class="id">ID: {$id}</div>
            <div class="platform">OS: {$platform}</div>
            <div class="date">{$date}</div>
            <div class="cpu">CPU: {$cpu}</div>
            <div class="system">SYS: {$system}</div>
            <div class="single">{$single}</div>
        </div>
        EOM;
        echo $message;
    }

}catch(PDOException $e){
    print("データベースの接続に失敗しました".$e->getMessage());
    die();
}

// 接続を閉じる
$dbh = null;

?>            
        </div>
    </div>
    </main>
</body>
</html>