<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MSG</title>
</head>
<body>
    <FORM>
ENTER A MESSAGE
<input type="text" name="txtmsg">
<br>
<input type=radio name=optcolor value=red>Red 
<input type=radio name=optcolor value=green checked>Green 
<input type=radio name=optcolor value=blue>Blue 
<br> 
  <input type=checkbox name=chkBold value="B">Bold 
  <input type=checkbox name=chkItalic>Italic 
  <input type=checkbox name=chkUnderline>Underline 
  <br>Font-Size 
  <select name=cmbsize>
  <?php 
   for ($i=8;$i<=50;$i=$i+2) 
   { 
    echo "<option>$i</option>"; 
   } 
  ?> 
  </select> 
  <br><br> 
  <INPUT type=submit name=s1 Value="Display">
  </form>
  <?php
  if (isset($_GET["s1"])) 
  { 
   echo "<pre>"; 
   print_r($_GET); 
   echo "</pre>"; 
print_r($_GET);
  
$clr=$_GET["optcolor"];
$msg=$_GET["txtmsg"];
$sz=$_GET["cmbsize"];

$sty="color:$clr;font-size:$sz;";

if(isset($_GET["chkBold"]));
$sty=$sty."font-weight:bold;";

if(isset($_GET["chkItalic"]));
$sty=$sty."font-style:italic;";

if(isset($_GET["chkUnderline"]));
$sty=$sty." text-decoration:underline;";
  
echo "<br>";
echo "<SPAN style='$sty'>$msg</SPAN>";
  } 
  ?>
  
    </FORM>
    
</body>
</html>
