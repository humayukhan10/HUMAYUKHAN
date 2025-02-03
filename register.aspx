<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="web_form.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #Submit1 {
            font-weight: 700;
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table border="0px">
            <tr>
                <td align="center" colspan="2px">Registration form</td>
                </tr>
            <tr>
                   <td>User Name</td>
                   <td> <input id="Text1" type="text" /></td>
            </tr>
             <tr>
        <td>paassword</td>
        <td> <input id="Text" type="password" /></td>
       </tr>
            <tr>
                <td>
                    <input id="Submit1" type="submit" value="submit" onclick="abc" /></td>
                
            <tr>
          <td>  <asp:Button ID="Button1" runat="server"  value="button" Text="Button" onclick="Button1_Click"/></td>
                </tr>


        </table>
    </form>
</body>
</html>
