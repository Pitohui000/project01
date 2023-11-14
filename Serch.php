<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>桃園客家文化館導覽網站</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href ="style.css?v=<?=time()?>">
	  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> <!--icon連結的css-->
</head>
<body>
    <!--加載-->
   <div class="loading-color">
     <div class="loading" id="fountainG">
	     <div id="fountainG_1" class="fountainG"></div>
	     <div id="fountainG_2" class="fountainG"></div>
	     <div id="fountainG_3" class="fountainG"></div>
	     <div id="fountainG_4" class="fountainG"></div>
	     <div id="fountainG_5" class="fountainG"></div>
	     <div id="fountainG_6" class="fountainG"></div>
	     <div id="fountainG_7" class="fountainG"></div>
	     <div id="fountainG_8" class="fountainG"></div>
     </div>
    </div>

    <header>
        <button class="menu">&#9776;</button>
    <a href ="#"><h1>虛擬導覽網站</h1></a>
    <nav class=search>
     <ul>
		   <form>
        <li><a href="#">最新消息</a></li>
        <li><a href ="#">虛擬導覽</a></li>
        <li><a href ="#">園區資訊</a></li>
        <li><a href ="02.html">音樂作品查詢</a></li>
        <input type="文字" placeholder="請輸入文字" required>
        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>  <!--搜尋icon--> 
       </form>
     </ul>
    </nav>
    </header>
    <main>
	<div>
	<li><li>
	<li><li>
	</div>
    <section class="Serch Bar">
    <!-- 搜尋表單 -->
    <form action="" method="get">
        <label for="search-input">搜尋：</label>
        <input type="text" id="search-input" name="q" placeholder="輸入關鍵字">
        <button type="submit">搜尋</button>
    </form>
	</section>
<?php
// 建立數據庫連接
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "test";

$conn = new mysqli($servername, $username, $password, $dbname);

// 檢查連接是否成功
if ($conn->connect_error) {
    die("連接失敗：" . $conn->connect_error);
}
if (isset($_GET['q'])) {
// 接收表單提交的搜尋關鍵字
$searchKeyword = $_GET['q'];

// 構建SQL查詢
$sql = "SELECT * FROM songs WHERE song_name LIKE '%$searchKeyword%'";

// 執行查詢
$result = $conn->query($sql);

// 顯示查詢結果
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "ID: " . $row["song_id"]. " - Name: " . $row["song_name"]. "<br>";
    }
} else {
    echo "沒有匹配的結果";
}
}

// 關閉數據庫連接
$conn->close();
?>
    </main>
    <footer>
        Pitohui © All Rights Reserved. | Designed by GGlisten X Cadiis
    </footer>
</body>
<!--隱藏加載-->
<script>
  $(document).ready(function () {
  setTimeout(function () {
    $(".loading-color").fadeOut(500);
  },0);
});
 </script>
</html>
