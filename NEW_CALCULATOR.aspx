<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NEWPROJECT.aspx.cs" Inherits="CALCULATER.NEWPROJECT" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <style>
        body {
            background-color: black;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        table {
            border-collapse: collapse;
            background: black;
            padding: 10px;
            border-radius: 10px;
            margin-left: 0px;
        }
        td {
            padding: 5px;
        }
        .calc-button {
            width: 50px;
            height: 50px;
            font-size: 18px;
            background-color: gray;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .calc-button:hover {
            opacity: 0.8;
        }
        .ac-button {
            background-color: red;
        }
        .equal-button {
            background-color: blue;
        }
        .display-container {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
            width: 100%;
        }
        .history-label {
            font-size: 18px;
            color: white;
            height: 20px;
            text-align: right;
        }
        .display {
            width: 100%;
            height: 50px;
            font-size: 24px;
            text-align: right;
            padding: 5px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" border="0">
            <tr>
                <td colspan="4" align="center">
                    <div class="display-container">
                        <asp:Label ID="historyLabel" runat="server" CssClass="history-label"></asp:Label>
                        <asp:TextBox ID="text" runat="server" CssClass="display" ReadOnly="true"></asp:TextBox>
                    </div>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="btn7" runat="server" Text="7" CssClass="calc-button" /></td>
                <td><asp:Button ID="btn8" runat="server" Text="8" CssClass="calc-button" /></td>
                <td><asp:Button ID="btn9" runat="server" Text="9" CssClass="calc-button" /></td>
                <td><asp:Button ID="btnmulti" runat="server" Text="*" CssClass="calc-button" /></td>
            </tr>
            <tr>
                <td><asp:Button ID="btn4" runat="server" Text="4" CssClass="calc-button" OnClick="btn4_Click1" /></td>
                <td><asp:Button ID="btn5" runat="server" Text="5" CssClass="calc-button" /></td>
                <td><asp:Button ID="btn6" runat="server" Text="6" CssClass="calc-button" /></td>
                <td><asp:Button ID="btnsub" runat="server" Text="-" CssClass="calc-button" /></td>
            </tr>
            <tr>
                <td><asp:Button ID="btn1" runat="server" Text="1" CssClass="calc-button" /></td>
                <td><asp:Button ID="btn2" runat="server" Text="2" CssClass="calc-button" /></td>
                <td><asp:Button ID="btn3" runat="server" Text="3" CssClass="calc-button" /></td>
                <td><asp:Button ID="btnadd" runat="server" Text="+" CssClass="calc-button" /></td>
            </tr>
            <tr>
                <td><asp:Button ID="btn0" runat="server" Text="0" CssClass="calc-button" /></td>
                <td><asp:Button ID="AC" runat="server" Text="AC" CssClass="calc-button ac-button" /></td>
                <td><asp:Button ID="equal" runat="server" Text="=" CssClass="calc-button equal-button" /></td>
                <td><asp:Button ID="DOT" runat="server" Text="." CssClass="calc-button" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
