<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <script src="jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="tailieu.js"></script>
</head>
<body>

<div class="header">
  
  <h1> Giáo dục là miễn phí </h1>
  <p>Hãy cùng nhau chung tay xây dựng một nền giáo dục miễn phí cho bất cứ ai, ở bất cứ nơi nào.</p>
</div>

<div class="topnav">
  <a href="#">Trang chủ</a>
  <a href="#">Chủ đề</a>
  <a href="#">Liên hệ</a>
  <a href="http://localhost:81/WebBTLON/Gopy.php">Góp ý</a>
 <!--  <input type="text" style="float:right" name=""> -->
  <a href="http://localhost:81/WebBTLON/SignIn.php" style="float:right">Đăng nhập</a>
</div>

<div class="row">
  <div class="leftcolumn">
    <div class="card" style="height:1500px;"v>
      
      <div class="fakeimg" style="height:1460px;">
         <?php require "getNews.php"; ?>
      </div>
      
    </div>
    
  </div>
  <div class="rightcolumn">
    <div class="card">
      <h2>Chúng tôi </h2>
      <div class="fakeimg" style="height:100px;">
        <img src="https://scontent.fhan3-3.fna.fbcdn.net/v/t1.0-9/29572288_953287974821222_4436507917469876224_n.png?_nc_cat=0&oh=f5e6ac1d3cd79aae34be690184c20895&oe=5B31176D">
      </div>
      <p><a href="https://www.facebook.com/dothimyy">Tìm hiểu về chúng tôi</a></p>
    </div>
    <div class="card" id="fakeimg"  >
      <h3>Chủ đề </h3>
      <ul>
        <?php
          include('getMenu.php') ;
        ?>
         
      </ul>
   
      
    </div>
    <!-- <div class="card">
      <h3>Để lại vài lời nhắn cho chúng tôi</h3>
      <p>Some text..</p>
    </div> -->
  </div>
</div>

<div class="footer">
  <h2>Copyright © 2018 QTM team</h2>
</div>

<script type="text/javascript" src="tailieu.js"></script>

</body>
</html>
