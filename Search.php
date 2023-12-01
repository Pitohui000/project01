<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>桃園客家文化館導覽網站</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="loading.js"></script>
    <link rel="stylesheet" href ="CSS/Searchstyle.css?v=<?=time()?>">
	  <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> <!--icon連結的css-->
</head>
<body>
    <header>
        <button class="menu" id="mobile-menu">&#9776;</button>
    <a href ="01.php"><h1>虛擬導覽網站</h1></a>
        <nav class="navbar">
            <ul class="menu-list">
                <li><a href="#">最新消息</a></li>
                <li><a href="#">虛擬導覽</a></li>
                <li><a href="#">園區資訊</a></li>
                <li><a href="Search.php">音樂作品查詢</a></li>
            </ul>
        </nav>
    </header>

    <main>
   <div class="big"></div>
    <nav class=search>
     <ul>
    <!-- 搜尋表單 -->
    <form action="" method="get">
        <input type="text" id="search-input" name="q" placeholder="輸入關鍵字">
        <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
    </form>
     </ul>
    </nav>
	<div class="selectbutton">
	<button type="submit">全部</button>
	
	<button type="submit">古典</button>
	<button type="submit">抒情</button>
	<button type="submit">現代</button>
	</div>
    <?php
        // 引入外部的 PHP 文件
        include 'PHP/Search.php';
    ?>

    </main>
	<!--
    <footer>
        Pitohui © All Rights Reserved. | Designed by GGlisten X Cadiis
    </footer>-->
</body>
<!--隱藏加載-->
</html>