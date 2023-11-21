<?php
// MySQL 伺服器資訊
$servername = "localhost"; // 伺服器位置
$username = "pitohui"; // 使用者名稱
$password = "197362"; 
$dbname = "music_database"; // 資料庫名稱

// 建立連線
$mysqli = new mysqli($servername, $username, $password, $dbname);

// 檢查連線是否成功
if ($mysqli->connect_error) {
    
    die("連線失敗: " . $mysqli->connect_error);
}

// 假設已經連接了資料庫，$mysqli 是你的資料庫連接物件

// 接收從前端發送的搜尋關鍵字
$keyword = $_GET['keyword']; // 如果使用 POST 方法發送，使用 $_POST['keyword']

// 做一個簡單的查詢（這邊只是範例，實際情況需要根據你的資料庫和資料結構進行修改）
$query = "SELECT * FROM music_info WHERE title LIKE '%$keyword%'";

// 執行查詢
$result = $mysqli->query($query);

// 將查詢結果轉換為 JSON 格式
$rows = array();
while($row = $result->fetch_assoc()) {
    $rows[] = $row;
}
header('Content-Type: application/json');
echo json_encode($rows);
?>
