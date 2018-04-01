<?php 
// <li value="ABC"><a href="#">&raquo; Toi la Menu 1</a></li>
if(isset($_GET['id']))
	$id=$_GET['id'];

	require('config.php');
	//B1-Ket noi DB
	$link=mysqli_connect($host,$user,$pass,$db);
	if(!$link){
		echo 'Ket noi ko thanh cong'.'-'.mysqli_connect_error();
	}else{
	//B2-Thuc hien Truy van
	mysqli_set_charset($link,'UTF8');
	if(isset($_GET['id']))
	 {$id=$_GET['id'];
	$sql="SELECT * FROM tailieu WHERE idchude='$id'";
	$result=mysqli_query($link,$sql);
		}
		else{$sql="SELECT * FROM tailieu";
	$result=mysqli_query($link,$sql);}

	}


	mysqli_close($link);
	   while($row_tailieu=mysqli_fetch_assoc($result)){
              ?>
          <div class="content1">
           
            <a href="" ><h2> <?php echo $row_tailieu['tentailieu'] ?> </h2></a>
            <p>
             <?php echo $row_tailieu['tomtat'] ?>
            </p>
            <a class="btn btn-primary btn-large" href="#">Tìm hiểu thêm</a>
          
          </div>
           <?php }


            ?>
