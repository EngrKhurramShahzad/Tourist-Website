﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webASP;

namespace WebEngPro
{
    public partial class SignUp1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            dbconnection dbconn = new dbconnection();
            string querycheck = "Select * from SignUp where Email='" + txtEmail.Text + "'";
            string colName = "select Email from SignUp";
            if (dbconn.checkData(colName, querycheck) == true)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('You already register with us\nPlease Sign In')</script>");
            }
            else
            {
                if (txtPassword.Text == txtConfirmpass.Text)
                {
                    string queryinsert = "insert into SignUp(Name,Email,Password) values ('" + txtFullName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "')";
                    dbconn.iud(queryinsert);
                    signUp();
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Please Rewrite Confirm Password')</script>");
                }
            }
        }
        private void signUp()
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Your Account is created, Please Sign In')</script>");
            txtFullName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtConfirmpass.Text = "";
        }
    }
}