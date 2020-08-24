<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddPackages.aspx.cs" Inherits="WebEngPro.AddPackages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="container">
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <h4 class="card-title mt-3 text-center">Enter the Package</h4>
                </div>
                <div class="col-md-4"></div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 text-center">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="image"><i class="fa fa-image" aria-hidden="true"></i></span>
                        </div>
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div><br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 text-center">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="title"><i class="fa fa-text-width" aria-hidden="true"></i></span>
                        </div>
                        <asp:TextBox ID="txttitle" runat="server" class="form-control" placeholder="Enter Title" aria-describedby="title" required></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div><br />
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4 text-center">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="description"><i class="fa fa-pencil" aria-hidden="true"></i></span>
                        </div>
                        <asp:TextBox ID="txtdescription" runat="server" class="form-control" placeholder="Enter Description" aria-describedby="description" required></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div><br />
        <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4  text-center">
                    <asp:Button class="btn btn-dark btn-block" ID="btnDone" runat="server" Text="Done" OnClick="btnDone_Click"/>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div><hr />
</asp:Content>
