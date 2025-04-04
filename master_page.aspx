<%@ Master Language="C#" AutoEventWireup="true" CodeBehind="Site1.master.cs" Inherits="master.Site1" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>My WebSite</title>
    <asp:ContentPlaceHolder ID="head" runat="server">
    </asp:ContentPlaceHolder>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:100%; align-self:center;background-color:antiquewhite">   
<table>
    <tr>
        <td colspan="2"> Header <br /><b></b></td>
    </tr>
    <tr>
       
       


         <td > <a href="WebForm2.aspx">Home</a> </td>
         <td > <a href="WebForm3.aspx">HCI</a> </td>
          <td > <a href="WebForm4.aspx">Details</a> </td>
        <td> <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">

 </asp:ContentPlaceHolder><br /><b></b></td>
    </tr>
    <tr>
        <td colspan="2">Footer</td>
    </tr>
</table>
           
        </div>
    </form>
</body>
</html>
