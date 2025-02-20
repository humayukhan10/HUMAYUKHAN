<form>
<input type=text name=txtname>
<br><br>
<input type=checkbox name=r1 value=1 >Odd/even
<input type=checkbox name=R1 value= >nagative/positive
<br>
<input type=submit>
</form>
<?php

$txt=$_GET["txtname"];
$od=$_GET["r1"];
$ev=$_GET["r1"];
$numg=$_GET["R1"];
//$pos=$_GET["R1"];
if($txt%2==0) {
	echo "EVEN";
	
}
else{
	echo "ODD";
	
}

if($numg<0){
	echo "negative";
}
else{
	
	echo "positive";
}


?>
