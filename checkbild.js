<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
function dispStyle()  {  
dispObj=document.getElementById("msg");
 if (document.getElementById("chkbold").checked)  
 {  dispObj.style.fontWeight="bold";  } 
  else  {  dispObj.style.fontWeight="normal";  }
  
   if (document.getElementById("chkitalic").checked) 
    {  dispObj.style.fontStyle="italic";  } 
	
	 else  {  dispObj.style.fontStyle="normal";  } 
	 
	  if (document.getElementById("chkuline").checked) 
	  
	   {  dispObj.style.textDecoration="underline";  }
	   
	     else  {  dispObj.style.textDecoration="none";  }  
		 
		 }  </script> 
      
</head>
<body>  <table align="center"; border=10; >  <tr background:black;>  <td bgcolor="red";>  <input type="checkbox" name="chkbold" id="chkbold">Bold  <input type="checkbox" name="chkitalic" id="chkitalic"> Italic  <input type="checkbox" name="chkuline" id="chkuline"> Underline  </td>  </tr>  <tr aria-colspan="2">  <td color="red"; align=center><span id="msg">Welcome To AIT</span></td>  </tr>  <tr>  <td align=center><input type="button" name="btn1" id="btn1" value="STYLE" onclick="dispStyle()"</td>  </tr>  </table> </body> </html>

</body>
</html>
