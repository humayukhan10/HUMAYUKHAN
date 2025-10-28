	<?php
	include"sequrity.php";
	include "connection.php";
	include"hed.php";

	$cpass=$_POST["txtcurpass"];
	$newpass=$_POST["txtnewpass"];
	$repeatpass=$_POST["repeatnewpass"];

	$qry="select*from userdetail where name='".$_COOKIE["uname"]."'";
	$rs=mysqli_query($conn,$qry);
	$rec=mysqli_fetch_assoc($rs);

		if($rec["password"]==$cpass){
			if($repeatpass==$newpass){
				
				$qry="update userdetail set password='".$newpass."' where name='".$_COOKIE["uname"]."'";
				mysqli_query($conn,$qry);
				echo"<font color=green size=15>Succese Fully Changed</font>";
			}
			else{
				echo"<font color=red size=15>sorry dont match password</font>";
			}
			
		}
		else{
			echo"<font color=red size=20>Sorry Unvalid User</font>";
		}


		
	include"footer.php";
	?>
