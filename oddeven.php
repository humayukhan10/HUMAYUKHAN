<html>
<body>
<form method=get action=odd1.php>
<?php
$num=rand(1,100);

echo "enter a number";
echo "<input type=text name=txtname  readonly value=$num>";
echo "<br><br>";
echo "<input type=submit value=display name=s1>";

?>
</form>
</body>
</html>
<?php
ECHO "<pre>";
print_r($_GET);
ECHO "</pre>";
$value=$_GET["txtname"];

if ($value%2==0){


echo "$value is even";

}
else {

echo "$value is odd";
}



?>
