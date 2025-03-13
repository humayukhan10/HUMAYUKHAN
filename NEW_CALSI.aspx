<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CALSI.aspx.cs" Inherits="CALCULATER.CALSI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
<style>
    body {
        background-color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    table {
        border-collapse: collapse;
        background: silver; /* Silver background */
        padding: 15px;
        border-radius: 20px; /* Rounded edges */
        box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.2); /* Soft shadow */
        width: 260px;
        height: 320px; /* Square shape */
    }

    td {
        padding: 5px;
    }

    .calc-button {
        width: 60px;
        height: 60px;
        font-size: 20px;
        background-color: #d1d1d1; /* Light silver */
        color: black;
        border: 2px solid #a0a0a0; /* Darker border */
        border-radius: 10px;
        cursor: pointer;
        transition: 0.3s;
    }

    .calc-button:hover {
        background-color: #b0b0b0; /* Darker silver on hover */
        transform: scale(1.05); /* Slight zoom effect */
    }

    .ac-button {
        background-color: red;
        color: white;
    }

    .ac-button:hover {
        background-color: darkred;
    }

    .equal-button {
        background-color: blue;
        color: white;
    }

    .equal-button:hover {
        background-color: darkblue;
    }

    .display-container {
        display: flex;
        flex-direction: column;
        align-items: flex-end;
        width: 100%;
    }

    .history-label {
        font-size: 16px;
        color: black;
        height: 20px;
        text-align: right;
    }

    .display {
        font-size: 24px;
        text-align: right;
        padding: 5px;
        border-radius: 10px;
        border: 2px solid #a0a0a0;
        background-color: white;
        margin-left: 0px;
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
                        <asp:TextBox ID="txtnum" runat="server" CssClass="display" ReadOnly="true" Width="280px"></asp:TextBox>
                    </div>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="btn7" runat="server" Text="7" CssClass="calc-button"  OnClick="Button_Click" /></td>
                <td><asp:Button ID="btn8" runat="server" Text="8" CssClass="calc-button" OnClick="Button_Click" /></td>
                <td><asp:Button ID="Button" runat="server" Text="9" CssClass="calc-button" OnClick="Button_Click"  /></td>
                <td><asp:Button ID="btnmulti" runat="server" Text="*" CssClass="calc-button" OnClick="OperationClick"/></td>
            </tr>
            <tr>
                <td><asp:Button ID="btn4" runat="server" Text="4" CssClass="calc-button"  OnClick="Button_Click"/></td>
                <td><asp:Button ID="btn5" runat="server" Text="5" CssClass="calc-button" OnClick="Button_Click"/></td>
                <td><asp:Button ID="btn6" runat="server" Text="6" CssClass="calc-button" OnClick="Button_Click"/></td>
                <td><asp:Button ID="btnsub" runat="server" Text="-" CssClass="calc-button"  OnClick="OperationClick"/></td>
            </tr>
            <tr>
                <td><asp:Button ID="btn1" runat="server" Text="1" CssClass="calc-button" OnClick="Button_Click" /></td>
                <td><asp:Button ID="btn2" runat="server" Text="2" CssClass="calc-button" OnClick="Button_Click"/></td>
                <td><asp:Button ID="btn3" runat="server" Text="3" CssClass="calc-button" OnClick="Button_Click"/></td>
                <td><asp:Button ID="Operation" runat="server" Text="+" CssClass="calc-button" OnClick="OperationClick"/></td>
            </tr>
            <tr>
                <td><asp:Button ID="btn0" runat="server" Text="0" CssClass="calc-button" OnClick="Button_Click" /></td>
                <td><asp:Button ID="AC" runat="server" Text="AC" CssClass="calc-button ac-button" OnClick="AC_Click" /></td>
                <td><asp:Button ID="equal" runat="server" Text="=" CssClass="calc-button equal-button" OnClick="equal_Click"  /></td>
                <td><asp:Button ID="divide" runat="server" Text="/" CssClass="calc-button" OnClick="OperationClick" /></td>
            </tr>
        </table>
    </form>
</body>
</html>















using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CALCULATER
{
    public partial class CALSI : System.Web.UI.Page
    {
        double n1 = 0;
        double n2 = 0;

        string opr = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtnum.Text = "0";
            }

        }


        protected void Button_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;
            if (button != null)
            {
                if (txtnum.Text == "0")
                    txtnum.Text = button.Text;
                else
                    txtnum.Text += button.Text;
            }
        }



        protected void equal_Click(object sender, EventArgs e)
        {
            if (ViewState["n1"] != null && ViewState["opr"] != null)
            {
                n1 += (double)ViewState["n1"];
                opr = ViewState["opr"].ToString();


                if (double.TryParse(txtnum.Text, out n2))
                {
                    if (opr == "+")
                    {
                        txtnum.Text = (n1 + n2).ToString();
                        historyLabel.Text = n1 + opr + n2 + "=";
                    }
                    else if (opr == "-")
                    {
                        txtnum.Text = (n1 - n2).ToString();
                        historyLabel.Text = n1 + opr + n2 + "=";
                    }
                    else if (opr == "*")
                    {
                        txtnum.Text = (n1 * n2).ToString();
                        historyLabel.Text = n1 + opr + n2 + "=";
                    }
                    else if (opr == "/")
                    {
                        if (n2 != 0)
                            txtnum.Text = (n1 / n2).ToString();
                        historyLabel.Text = n1 + opr + n2 + "=";
                    }
                    else
                        txtnum.Text = "Error";
                }
                else
                {
                    txtnum.Text = "Invalid Operation";
                }
            }
            else
            {
                txtnum.Text = "Error";
            }
        }
    
    
        

        protected void AC_Click(object sender, EventArgs e)
        {
            txtnum.Text = "0";
            historyLabel.Text = "";
            ViewState["n1"] = null;
            ViewState["opr"] = null;
        }

        protected void OperationClick(object sender, EventArgs e)
        {
            Button button = sender as Button;

            if (button != null && double.TryParse(txtnum.Text, out double n1))
            {
                ViewState["n1"] = n1;
                ViewState["opr"] = button.Text;
                txtnum.Text = "";
               historyLabel.Text= n1 + ViewState["opr"].ToString();
            }
           
        }
        }
      

    }
