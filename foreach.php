<?php
$arr1=array(24=>10,"cait",9.7,388310);
echo "<pre>";
print_r($arr1);
echo "</pre>";
foreach($arr1 as $val)
{
echo "<br>$val";
}
foreach($arr1 as $k=>$v)
{
echo "<br>".$k."==".$v;
}
?>
