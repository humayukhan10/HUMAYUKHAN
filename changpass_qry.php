<?php
include "connection.php";
include "security.php";
include "header.php";
$qry="select * from student where username='".$_COOKIE["username"]."'";
$rs=mysqli_query($conn,$qry);
$val=mysqli_fetch_assoc($rs);
$cur=$_POST["passcur"];
$new=$_POST["passnew"];
$con=$_POST["passcon"];

if($cur==$val["password"]){
   if($new==$con){
  $qry="update student set password='$new' where username='".$_COOKIE["username"]."'";
  mysqli_query($conn,$qry);
  header("Location:student.php");
  echo "succesfull";
  }
   else{
    echo "your current pass or new not match";
}

}
else{
echo "invalid password";
}

?>
