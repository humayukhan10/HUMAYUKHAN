<form>
select year
<select name=sy>

<?php
for($i=2022;$i<=2025;$i++)
echo "<option>$i</option>";

?>

<input type=submit name=s1 value=Display>

</select>
</form>

<?php
$day=1;

$mon=10;
$dt=mktime(0,0,0,$mon,$day,$yu);
$sat=date("w",$dt);
$yu=$_GET["sy"];
if  ($yu % 4 == 0 ){
    echo $yu."Is leap is  year";
}


else{
    echo $yu."Is leap  not  year";
}

    echo $sat;





?>
