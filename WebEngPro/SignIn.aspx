<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebEngPro.SignIn1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"><br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 text-center">
                    <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
                </div>
                <div class="col-md-4"></div>
            </div><br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 text-center">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="email"><i class="fa fa-user"></i></span>
                        </div>
                        <asp:TextBox ID="txtMail" runat="server" type="email" class="form-control" placeholder="Enter Email" aria-describedby="email" required></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div><br />
            <div class="row">
                <div class="col-md-4">
                </div>
                <div class="col-md-4 text-center">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="password"><i class="fa fa-lock"></i></span>
                        </div>
                        <asp:TextBox ID="txtPass" runat="server" type="password" class="form-control" placeholder="Enter Password" aria-describedby="password" required></asp:TextBox>
                        
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-3"></div>
                <div class="col-md-4">
                    <label style="padding-left:10%"><a href="#">Forget Password?</a></label>
                </div>
            </div><br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4  text-center">
                    <asp:Button ID="btnSignIn" runat="server" Text="Sign In" value="Sign In" class="btn btn-lg btn-dark btn-block" OnClick="btnSignIn_Click"/>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div><hr />
</asp:Content>
