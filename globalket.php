<?php

$a=10;
$b=5;

function sum (){

global $a,$b;
$b=$a+$b;
  



}
sum();
echo $b;

?>
