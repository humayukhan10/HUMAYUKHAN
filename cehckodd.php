<html>
    <body>
        <form>
CHECK ODD OR EVEN
<br><br>
<?php
$val=rand(1,10);
echo "Enter A  value:";
echo "<input type=text name=txt value=$val>";
?>

<br>
<input type=radio name=rd1>ODD
<input type=radio name=rd1>EVEN
<br>
<input type=submit name=s1 value=display>

       </form>
    </body>
</html>

<?php
$num=$_GET["txt"];
$val=$_GET["rdd1"];
if($num%2==0){
    echo $num. " Is Even Number";

}
else{
    echo $num."Is Odd Number";
}


?>
