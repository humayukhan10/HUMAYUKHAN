<?php
include "connection.php";
$un=$_POST["txtname"];
($pasw=$_POST["txtpass"]);
$qry="insert into student  (username,password) values('$un','$pasw') ";
mysqli_query($conn,$qry);
header("Location:loginpage.php?err4")



?>
