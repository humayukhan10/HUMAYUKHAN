<?php
	include "security.php";
	include "header.php";
	include "connection.php";
		
	$num=$_POST["txtnum"];
	$nm=$_POST["txtname"];
	$cat=$_POST["cmbCategory"];
	$gen=$_POST["optGender"];
	$bdate=$_POST["txtBdate"];
	$cont=$_POST["txtContacts"];
	
	$qry="insert into stud_info (regno,name,gender,category,birthdate,contact_details) values ";
	$qry=$qry."('$num','$nm','$gen','$cat','$bdate','$cont')";
	
	//echo "<br>".$qry;
	
	mysqli_query($conn,$qry);
	header("Location: student.php");
		
	include "footer.php";

?>
