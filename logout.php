<?php
	session_start();
	session_destroy();
	setcookie("uname","0",time()-1090);
	header("Location: login.php");
?>
