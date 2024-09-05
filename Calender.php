<?php
	$m=6;
	$y=2024;
	$tm=mktime(0,0,0,$m,1,$y);
	$wday=date("w",$tm);
	
	echo "<table border=1 cellspadding=4>";
	echo "<tr><th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thr</th><th>Fri</th><th>Sat</th></tr>";
	echo "<tr>";
	$cell=0;
	for ($i=1;$i<=$wday;$i++)
	{
		
		$cell++;
		echo "<th></th>";
	}
	$cnt=1;	
	while(checkdate($m,$cnt,$y))
	{
		if ($cell%7==0)
			echo "</tr><tr>";
		echo "<th>".$cnt."</th>";
		$cnt++;
		$cell++;
	}
	echo "</tr>";
	echo "</table>";
?>
