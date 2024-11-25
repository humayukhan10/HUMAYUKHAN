<?php
include "security.php";
include "header.php";
include "connection.php";

$qry="select * from student_details where regno=".$_GET["rec"];
$sql=mysqli_query($conn,$qry);
$val=mysqli_fetch_assoc($sql);
$arr=array('General','OBC','SC','ST','EWS');
	echo "<br><b>Edit Student Details<br>";

?>
<form action=stud_edit_qry.php method=post>
<table border=1px align=center>
<tr>
    <td>Registration Number</td>
    <td><input type=text name=txtnum readonly value=<?=$val["regno"]?>></td>
</tr>
<tr>
    <td>NAME </td>
    <td><input type=text name=txtname  value=<?=$val["name"]?>  ></td>
</tr>
<tr>
    <td>Gender</td>
    <td><input type=radio name=r1 value="Male" <?=($val["gender"]=='male')?"checked":""?>>Male</td>
    <td><input type=radio name=r1 value="Female" <?=($val["gender"]=='female')?"checked":""?>>Female</td>
</tr>
<tr>
    <td>Category:</td>
    <td><select name=cmbCategory><?php  
    
    foreach($arr as $v){
        if($v==$val["category"]){
          echo  "<option selected>$v</option>";
        }
        else{
            echo "<option>$v</option>";
        }

    }


    ?></td>
</tr>
<tr>
    
    <td><input type=submit name=s1></td>
</tr>

</table>

</form>
