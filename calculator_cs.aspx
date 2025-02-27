using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class CALCULATOR : System.Web.UI.Page
    {
        
        int n1 = 0;
         int n2 = 0;
        string btn = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtnum_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
          txtnum.Text += "1";



        }

        protected void btn7_Click(object sender, EventArgs e)
        {
            txtnum.Text += "7";
        }

        protected void btn8_Click(object sender, EventArgs e)
        {
            txtnum.Text += "8";

        }

        protected void btn9_Click(object sender, EventArgs e)
        {
            txtnum.Text += "9";

        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            txtnum.Text += "4";
        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            txtnum.Text += "5";
        }

        protected void btn6_Click(object sender, EventArgs e)
        {
            txtnum.Text += "6";
        }
       protected void btn2_Click(object sender, EventArgs e)
        {
            txtnum.Text += "2";

        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            txtnum.Text += "3";
        }
        protected void btnmulti_Click(object sender, EventArgs e)
        {
            if (txtnum.Text != null)
            {
                n1 = Convert.ToInt32(txtnum.Text.Trim());
                btn = "*";
                ViewState["first"] = n1;
                ViewState["sing"] = btn;
                txtnum.Text = "";
            }
        }
        protected void btnsub_Click(object sender, EventArgs e)
        {

            if (txtnum.Text != null)
            {
                n1 = Convert.ToInt32(txtnum.Text.Trim());
                btn = "-";
                ViewState["first"] = n1;
                ViewState["sing"] = btn;
                txtnum.Text = "";
            }

        }
        protected void btnadd_Click(object sender, EventArgs e)
        {
                if (txtnum.Text != null) {
                    n1 = Convert.ToInt32(txtnum.Text.Trim());
              
                btn = "+";
                    ViewState["first"] = n1;
                    ViewState["sing"] = btn;
                    txtnum.Text = "";
                }
            }

        protected void btn0_Click(object sender, EventArgs e)
        {
            txtnum.Text += "0";
        }

        protected void AC_Click(object sender, EventArgs e)
        {
            txtnum.Text = "";
            historyLabel.Text = "";

        }

        protected void equal_Click(object sender, EventArgs e)
        {
            int ans = 0;
            n2 = Convert.ToInt32(txtnum.Text.ToString());
            if (ViewState["first"]  != null)
            {
                n1=Convert.ToInt32((ViewState["first"]).ToString());
            }
            if (ViewState["sing"] != null)
            {
                btn= ViewState["sing"].ToString();
            }
    

            if (btn == "+")
            {
                ans = n1 + n2;
                historyLabel.Text = n1 + " + " + n2 + "="+ ans;
            }
            else if (btn == "-")
            {
                ans= n1 - n2;
                historyLabel.Text = n1 + " - " + n2 + "=" + ans;
            }
            else if(btn == "*")
            {
                ans= n1 * n2;
                historyLabel.Text = n1 + " * " + n2 + "=" + ans;
            }
            else
            {
                ans = n1 / n2;
                historyLabel.Text = n1 + " / " + n2 + "=" + ans;
            }
           

                 txtnum.Text= ans.ToString();
        }

      

        protected void divide_Click(object sender, EventArgs e)
        {
            n1 = Convert.ToInt32(txtnum.Text.Trim());
            btn = "/";
            ViewState["first"] = n1;
            ViewState["sing"] = btn;
            txtnum.Text = "";
        }
    }
}
