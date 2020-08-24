using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webASP;

namespace WebEngPro
{
    public partial class SignIn1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            dbconnection dbconn = new dbconnection();
            string query = "select * from SignUp where Email='" + txtMail.Text + "' and Password='" + txtPass.Text + "'";
            string colname = "select Email,Password from SignUp";
            if (dbconn.checkData(colname, query) == true)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('You are loged in')</script>");
                Response.Redirect("ClientHome.aspx");
            }
            else
            {
                string quer = "select * from AddAdmin where Email='" + txtMail.Text + "' and Password='" + txtPass.Text + "'";
                string colnam = "select Email,Password from Admin";
                if (dbconn.checkData(colnam, quer) == true)
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Welcome to the Website')</script>");
                    Response.Redirect("AdminHome.aspx");

                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Wrong Email or Password')</script>");
                }

            }
        }
    }
}