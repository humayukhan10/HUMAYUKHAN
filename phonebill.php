	<?php 

	print_r($_GET);
	$r1=$_GET["txtname"];


	echo "<br>";

	if($r1>=1 && $r1<=200)
	{
	 $t1=0;
	 echo " YOUR PHONE BILL $t1";

	}
	else if($r1>=200 && $r1<=300)
	{
	 $t1=100+($r1-200)*1;
	 echo " YOUR PHONE BILL $t1";

	}

	else if($r1>=300 && $r1<=400 )
	{
	 $t1=100+($r1-200)*2;
	 echo " YOUR PHONE BILL $t1";

	}
	else if($r1>=400 && $r1<=1000 )
	{
	 $t1=100+($r1-200)*3;
	 echo " YOUR PHONE BILL IS $t1";
	 echo "<br>";
	 echo " YOU GOT UNLIMITED CALL SERVICE 🐱‍🏍‍";

	}
	else 
	{
		echo "op";
	}




	?>
