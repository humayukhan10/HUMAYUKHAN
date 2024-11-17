<?php

include "index.php";
session_start();
session_destroy();
setcookie("username","0",time()-1090);
header("Location:loginpage.php?err2")

?>
