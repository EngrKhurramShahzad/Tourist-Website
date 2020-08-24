<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WebEngPro.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <h4 class="card-title mt-3 text-center">Contact Us</h4>
                 
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 text-center">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="fullname"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                        </div>
                        <asp:TextBox ID="txtFullName" runat="server" class="form-control" placeholder="Enter Full Name" aria-describedby="fullname" required></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div><br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 text-center">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="email"><i class="fa fa-user" aria-hidden="true"></i></span>
                        </div>
                        <asp:TextBox ID="txtEmail" type="email" runat="server" class="form-control" placeholder="Enter Email Address" aria-describedby="email" required></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div><br />
           
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 text-center">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="message"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                        </div>
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Your Message" aria-describedby="message" required></asp:TextBox>
                    </div>
                      
                </div>
                <div class="col-md-4"></div>
            </div><br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4  text-center">
                    <asp:Button class="btn btn-lg btn-dark btn-block" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" required/>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div><hr />
</asp:Content>
