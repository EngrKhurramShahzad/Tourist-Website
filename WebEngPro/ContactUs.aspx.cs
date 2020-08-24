using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webASP;

namespace WebEngPro
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            dbconnection dbcon = new dbconnection();
            string query = "insert into Contact(Name,Email,Message) values('"+txtFullName.Text+"','"+txtEmail.Text+"','"+TextBox2.Text+"')";
            if (dbcon.iud(query))
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Message Successfully Submitted')</script>");
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('An Error Occured')</script>");
            }
        }
    }
}