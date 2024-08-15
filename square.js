<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML> <HEAD> <script type="text/javascript"> function sqrCalc()  { 

 var numObj,dispObj,num; 
 
  numObj=document.getElementById("txtnum"); 
  
   dispObj=document.getElementById("txtdisp"); 
   
    num=numObj.value;  
	
	dispObj.value=num*num; } 
    
    </script> </HEAD> 




<body>  <table border=0>  <tr>  

<td>Enter Number:</td>  
<td><input type="text" name="txtnum" id="txtnum"> </td> 

 </tr>  <tr>  <td>Square</td>  <td><input type="text" name="txtdisp" id="txtdisp" readonly></td>
 
   </tr>  <tr>  <td align=center colspan=2> CALCULATE SQUARE VALUE <input type="button" name="btn1" id="btn1" value="CALCULATE" onclick="sqrCalc()">  </td>  </tr>  </table> </body> </html>
