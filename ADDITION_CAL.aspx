<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CAL.aspx.cs" Inherits="CALCULATER.CAL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body align="center">
    <form id="form1" runat="server">
        <asp:TextBox ID="txtnum1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
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
    public partial class CAL : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if (ViewState["hk"] == null)
            {
                ViewState["hk"] = txtnum1.Text.Trim();
                Response.Write("Addition=" + txtnum1.Text.Trim());

            }
            else
            {
                int num1 = Convert.ToInt32(ViewState["hk"].ToString());
                int num2 = Convert.ToInt32(txtnum1.Text.Trim());

                ViewState["hk"] = num1 + num2;

              
                Response.Write("Addition=" + ViewState["hk"]);

            }



        }
    }
}
