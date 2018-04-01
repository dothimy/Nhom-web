<?php 
// <li value="ABC"><a href="#">&raquo; Toi la Menu 1</a></li>
	require('config.php');
	//B1-Ket noi DB
	$link=mysqli_connect($host,$user,$pass,$db);
	if(!$link){
		echo 'Ket noi ko thanh cong'.'-'.mysqli_connect_error();
	}else{
	//B2-Thuc hien Truy van
	mysqli_set_charset($link,'UTF8');
	$sql="SELECT * FROM chude";
	$result=mysqli_query($link,$sql);
	if(mysqli_num_rows($result)>0){
		while($row=mysqli_fetch_assoc($result)){
			$hienthi='<li value="'.$row['idchude'].'"><a href="?id='.$row['idchude'].' ">&raquo; '.$row['tenchude'].'</a></li>';
			echo $hienthi;
		}
		
	}else{
		echo 'Ko ton tai ban ghi nao';
	}
	}

	mysqli_close($link);
	//?id=.$row['idchude']
?>