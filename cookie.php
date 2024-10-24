<?php

$us="hk";
$pass=10;

$USER=$_GET["txtname"];
$PASS=$_GET["txtpass"];
if($USER==$us && $PASS==$pass){
setcookie("name","hk");
header("Location:OP.php");

}
else{
header("Location:login.php?err=1");

}

?>
