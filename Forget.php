<?php
	include "security.php";
	include "header.php";
	include "connection.php";
		
	$cur=$_POST["txtcurpass"];
	$new=$_POST["txtnewpass"];
	$cnf=$_POST["txtcnfpass"];
	
	$qry="select * from userlist where username='".$_COOKIE["uname"]."'";
	                                  
	$rec=mysqli_query($conn,$qry);
	$val=mysqli_fetch_assoc($rec);

	if ($val["userpass"]==md5($cur))
	{
		if ($new==$cnf)
		{
			$qry="update userlist 
				set userpass='".md5($new)."'
				where username='".$_COOKIE["uname"]."'";
			
			//echo "<br>".$qry;
			
			mysqli_query($conn,$qry);
			echo "<br>Successfully Changed Password";
		}
		else
			echo "<br>New and Confirm password are not same";
	}
	else
		echo "<br>Invalid Current Password";
		
	include "footer.php";

?>
