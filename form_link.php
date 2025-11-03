<Html>
<Body>

<?php
	
	print_r($_POST);
	echo "Number:=".$_POST["txtnum"];
	echo"<br>";
	echo "password:=".$_POST["txtpass"];
	echo"<br>";
	
	print_r($_GET);
	echo "Number:=".$_GET["txtnum"];
	echo"<br>";
	echo "password:=".$_GET["txtpass"];
	echo"<br>";
	
	print_r($_REQUEST);
	echo "Number:=".$_REQUEST["txtnum"];
	echo"<br>";
	echo "password:=".$_REQUEST["txtpass"];
	echo"<br>"

?>
</Body>
</Html>
