<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML> <HEAD>  
  <script type="text/javascript">  
  
  function checkNumber()  { 
  
   var numObj,dispObj,num;  
   
   numObj=document.getElementById("txtnum"); 
    dispObj=document.getElementById("msg");  
	num=numObj.value; if (num%2==0) 
	
	 {  dispObj.innerHTML=num +" is Even Number";  }  
	 
	 else  {  dispObj.innerHTML=num +" is Odd Number";  } 
	 
	  }  </script> 
      
      </HEAD> <Body> 
       <table border=0>  <tr>  <td>Enter Number:</td>  <td><input type="text" name="txtnum" id="txtnum"></td>  </tr>  <tr>  <th colspan=2><span id="msg">Message</span></th>  </tr>  <tr>  <td align=center colspan=2> <input type="button" name="btn1" id="btn1" value="CHECK" onclick="checkNumber()"> </td>  </tr>  </table> </Body> </html>
