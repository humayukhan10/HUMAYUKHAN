<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" <HTML> <HEAD>


  <script type="text/javascript">  
  
  function dispSize()  { 
  
   dispObj=document.getElementById("msg");
   
    dispObj.style.fontSize= document.getElementById("cmbsize").value;  } 
	
	 </script> 
     
     </HEAD> <body> 
     
      <table border=0>  <tr>  <td>Font Size: </td>  <td>  <select name="cmbsize" id="cmbsize">  <option value="10">10</option>  <option value="12">12</option>  <option value="14">14</option>  <option value="16">16</option>  </select>  </td>  <td align=center><input type="button" name="btn1" id="btn1" value="DISPLAY" onclick="dispSize()"</td>  </tr>  <tr>  <td colspan=3 align=center> <span id="msg">Welcome To AIT</span></td>  </tr>  </table> </body> </html>
