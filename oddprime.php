<?php
print_r($_GET);
$VAL=$_GET["txtnum"];
echo "<br>";
if(isset($_GET["opt1"])){
if($VAL%2==0){

echo "EVEN".$VAL;

}
else
{
echo "Odd";

}
}

if(isset($_GET["opt1"])){
$pm=$VAL;

if($pm%2==0){
echo "composite";
}
else
{
echo "prime";
}
}
?>
