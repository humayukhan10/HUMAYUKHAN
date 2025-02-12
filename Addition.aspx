    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="register.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body align="center">
    <form id="form1" runat="server">
      <asp:TextBox ID="txtnum" runat="server" AutoPostBack="true" OnTextChanged="txtnum_TextChanged"></asp:TextBox>
    </form>
</body>
</html>
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace register
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtnum_TextChanged(object sender, EventArgs e)
        {
            if (ViewState["hk"] == null)
            {
                ViewState["hk"]=txtnum.Text.Trim();
                Response.Write("Addition=" + txtnum.Text.Trim());
            }
            else
            {
                int num1 = Convert.ToInt32(ViewState["hk"].ToString());
                int num2 = Convert.ToInt32(txtnum.Text.Trim());


                ViewState["hk"]=num1+num2;

                Response.Write("Addition="+ ViewState["hk"]);



            }


        }
    }
}
