<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddNewAdmin.aspx.cs" Inherits="WebEngPro.AddNewAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <h4 class="card-title mt-3 text-center">Add New Admin</h4>
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
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Enter Email Address" aria-describedby="email" required></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div><br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 text-center">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="password"><i class="fa fa-lock" aria-hidden="true"></i></span>
                        </div>
                        <asp:TextBox ID="txtPassword" runat="server" type="password" class="form-control" placeholder="Enter Password" aria-describedby="password" required></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div><br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 text-center">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="confirmpass"><i class="fa fa-lock" aria-hidden="true"></i></span>
                        </div>
                        <asp:TextBox ID="txtConfirmpass" runat="server" type="password" class="form-control" placeholder="Confirm Password" aria-describedby="confirmpass" required></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div><br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4  text-center">
                    <asp:Button class="btn btn-lg btn-dark btn-block" ID="btnAddAdmin" runat="server" Text="Add" OnClick="btnAddAdmin_click"/>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div><hr />
</asp:Content>
