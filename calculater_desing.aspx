<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CAL.aspx.cs" Inherits="register.CAL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
<form id="form1" runat="server">
<table align="center" border="1">
<tr >
<td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
</tr>
<tr align="center" >
<td><asp:Button ID="Button1" runat="server" Text="9" />&nbsp
    <asp:Button ID="Button2" runat="server" Text="8" />&nbsp
    <asp:Button ID="Button3" runat="server" Text="7" />&nbsp
    <asp:Button ID="Button4" runat="server" Text="+" />&nbsp
</td>
</tr>
<tr align="center">
 <td>
    <asp:Button ID="Button5" runat="server" Text="6" />&nbsp
    <asp:Button ID="Button6" runat="server" Text="5" />&nbsp
    <asp:Button ID="Button7" runat="server" Text="4" />&nbsp
    <asp:Button ID="Button8" runat="server" Text="-" />&nbsp
 </td>
</tr>
 <tr align="center">
 <td>
    <asp:Button ID="Button9" runat="server" Text="3" />&nbsp
    <asp:Button ID="Button10" runat="server" Text="2" />&nbsp
    <asp:Button ID="Button11" runat="server" Text="1" />&nbsp
    <asp:Button ID="Button12" runat="server" Text="*" />&nbsp
 </td>
</tr>
<tr align="center">
 <td>
    <asp:Button ID="Button13" runat="server" Text="=" />&nbsp
    <asp:Button ID="Button14" runat="server" Text="0" />&nbsp
    <asp:Button ID="Button15" runat="server" Text="." />&nbsp
    <asp:Button ID="Button16" runat="server" Text="÷" />&nbsp
 </td>
</tr>


</table>        

 
</form>
</body>
</html>
