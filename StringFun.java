<?php
$var="humayukhan";
echo gettype($var); //get function
echo "<br>";
$var1="90.99humayu";
 echo  strval($var1);
 echo "<br>";
 echo  floatval($var1);
 echo "<br>";
 echo  intval($var1);
 echo "<br>";
 echo is_string($var1);
 echo "<br>";
 $a=90;
 echo $a;

 #unset($a);  
 #echo $a;
 //STRING
 echo "<br>";
 echo 'This is jod';
$str= <<<EOD
THIS IS OUR EXAM,
WE NEDD THIS 
EOD;
echo $str;

//STRING FUNCTION
echo "<br>";
echo chr(67);
echo "<br>";
echo ord("C");
ECHO "<BR>";
ECHO strcmp("HUMAYU","humayu");

$str="ABCD 12YTR";
echo "<br>";
echo $bod=strpos($str,'1');
echo "<br>";
$str2='rehan76';
echo stristr($str2,'7');
?>
