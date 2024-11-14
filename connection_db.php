<?php
// connect to  databse

$servername="localhost";
$username="root";
$password="";
// create connection
$conn= mysqli_connect($servername,$username,$password);
//CREATE DATABSE
$sql="CREATE DATABASE HK1";
mysqli_query($conn,$sql); 
if(!$conn)
{
    die("sorry we failed to connect ".mysqli_connect_error());
}
else{
    echo "connection was succesfull";
}


?>
