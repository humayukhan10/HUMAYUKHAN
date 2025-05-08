<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.WebForm6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter A Name:
            <asp:TextBox ID="txtnm" runat="server"></asp:TextBox><br /><br />
            Enter A Password
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox><br /><br />
            <asp:Button ID="submit" runat="server" Text="submit" OnClick="submit_Click" />
        </div>
    </form>
</body>
</html>
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class WebForm6 : System.Web.UI.Page
    {
       string connectionstring = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string user=txtnm.Text;
            string pass=txtpass.Text;   
            SqlConnection con =new SqlConnection(connectionstring);
            string query = "select count(*) from security where name=@name and password=@password";
            SqlCommand cmd =new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@name", user);
            cmd.Parameters.AddWithValue("@password", pass);
            int row = Convert.ToInt16(cmd.ExecuteScalar());

            if (row == 1)
            {
                Session["user"] = user;
               // HttpCookie cok =new HttpCookie("username");
                Response.Redirect("menu.aspx");
            }
            else
            {
                Response.Write("user not found");
            }
            con.Close();
        }
    }
}
