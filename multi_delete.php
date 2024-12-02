<?php
	include "security.php";
	include "header.php";
	include "connection.php";
	
	$qry="delete from stud_info where id in (".implode(",",$_POST["chk"]).")";
	//echo $qry;
	
	mysqli_query($conn,$qry);
	header("Location: student.php");
	
	include "footer.php";

?>
