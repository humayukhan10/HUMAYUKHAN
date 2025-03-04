<?php
	echo "<br>File Handling";
	$fp=fopen("data1.txt","w");
	if(!$fp)
		die("<font color=red>File does not open</font>");
	
	$str="Hello\nHow are you?\nI am fine\n";
	fwrite($fp,$str);
	fwrite($fp,date("d-M-Y h:i:s"));
	
	fclose($fp);
	
?>
