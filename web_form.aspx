<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg_form.aspx.cs" Inherits="reg_form.reg_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
<table>
    <tr>
        <td>First Name</td>
        <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
    </tr>
  <tr>
     <td>Last Name</td>
     <td><asp:TextBox ID="txtlast" runat="server"></asp:TextBox></td>
 </tr>
    <tr>
    <td>Passsword</td>
        <td>
            <asp:TextBox ID="txtpass" runat="server"  TextMode="Password"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
           <input type="date" />
        </td>
    </tr>
    <tr>
        <td colsppan="2px" align=center><input type="submit" runat="server" onclick="xyz" /></td>
            
        <td><asp:Button ID="Cancle" runat="server" Text="Cancle"  />
            </td>
    </tr>


</table>
    </form>
</body>
</html>
