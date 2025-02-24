<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation- Check</title>
    <style type="text/css">
        .auto-style1 {
            width: 132px;
        }
    </style>
</head>
<body align="center">
    <form id="form1" runat="server">
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter A Username:
        <asp:TextBox ID="Username" runat="server" ></asp:TextBox> &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Username" ErrorMessage="USERNAME REQUIRED" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        Entre A Email:
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter A EMAIL" SetFocusOnError="True" ValidateRequestMode="Enabled" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Contace NO:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="10 Number required" MaximumValue="10" MinimumValue="1" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ENTER A CUSTOM :<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="txtcust" runat="server" ErrorMessage="ERROR" Display="None" SetFocusOnError="True" ValidateEmptyText="False" ControlToValidate="TextBox2"></asp:CustomValidator>
        <br />
        <br />
        <br />
        <br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input id="Submit1" type="submit" value="submit" runat="server" class="auto-style1" />
    </form>
</body>
</html>
