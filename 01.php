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
    <section class="news">
    <h2>這是一隻鯊魚</h2>
    <p><strong>虛擬導覽、網站撰寫，建置中...</strong></p>
    <p><a href="file:///C:/Users/zack1/OneDrive/%E6%96%87%E4%BB%B6/%E5%B0%88%E9%A1%8C/project/%E3%80%8A%E5%AD%A4%E7%8D%A8%E6%90%96%E6%BB%BE%E3%80%8B%E7%B5%90%E6%9D%9F%E3%83%90%E3%83%B3%E3%83%89.html">了解更多</a></p>
    </section>

    <section class="slogan">
    <blockquote cite="#">"在思考製作時，<br>要去想環境的意義"</blockquote>
    </section>

    <section class="Map">
	<img src="https://github.com/Pitohui000/project01/blob/main/20210608163612.jpg?raw=true" alt ="gura">

    <div class="info">
    <h2>A! A! A! A!</h2>
    <p>好油喔 peko~~~<br>kuru kuru kuru</p>
    </div>
    </section>

  <section class="googlemap">
      <div class="container">
        <h2>相關資訊</h2>
        <div class="infos">
          <div class="left"> <b>桃園市客家文化館地址:</b> <span>325桃園市龍潭區中正路三林段500號</span> <b> 電話:03-4096682</b> 
            <b> 營業時間:<span>星期六:09:00–17:00</span><span>星期日:09:00–17:00</span><span>星期一:休息</span><span>星期一:09:00–17:00</span><span>星期二:09:00–17:00</span><span>星期三:09:00–17:00</span><span>星期四:09:00–17:00</span><span>星期五:09:00–17:00</span></b> 
          </div>
          <div class="right"> <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1810.2604679304209!2d121.23186715142786!3d24.84605159189432!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x34683da78b0cffcf%3A0xe2a2cbcf1cebbd89!2z5qGD5ZyS5biC5a6i5a625paH5YyW6aSo!5e0!3m2!1szh-TW!2stw!4v1698993887372!5m2!1szh-TW!2stw" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> </div>
        </div>
      </div>

    </section>

    <section class="newsletter">
        <p>歡迎提供建設性的建議</p>
        <form>
            <input type="文字" placeholder="請輸入文字" required>
            <button type="submit">送出</button>
        </form>
    </section>
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
  },2000);
});
 </script>
</html>
