<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="ClientHome.aspx.cs" Inherits="WebEngPro.ClientHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="carouselSlides" class="carousel slide" data-interval="3000" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselSlides" data-slide-to="0" class="active"></li>
                <li data-target="#carouselSlides" data-slide-to="1"></li>
                <li data-target="#carouselSlides" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100 img-responsive" src="Images/islamabad3.jpg" alt="First slide"/>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="Images/Badshahi-Mosque.jpg" alt="Second slide"/>
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="Images/NORTH3.jpg"alt="Third slide"/>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselSlides" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselSlides" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div><hr />
    <section id="packages">
        <p class="h3" style="text-align:center">Packages</p><br />
        <div class="container">
            <div class="row">
                <div class="col col-md-3">
                    <div class="card">
                        <img src="Images/1.jpg" class="img-thumbnail card-img-top"/>
                        <div class="card-body">
                            <h5 class="card-title">Naran</h5>
                            <p class="card-text">Naran Kaghan valley is at a distance of 212 Km from Islamabad, Shogran is true tourist paradise at the height of 7,749ft above sea level.</p>
                            <a href="#" class="btn btn-dark">See Detail</a>
                        </div>
                    </div>
                </div>
                <div class="col d-none d-sm-block col-md-3">
                    <div class="card">
                        <img src="Images/KhunjerabPass.jpg" class="img-thumbnail card-img-top"/>
                        <div class="card-body">
                            <h5 class="card-title">Khunjerab Pass</h5>
                            <p class="card-text">Khunjerab Pass is a high mountain pass in the Karakoram Mountains in a strategic position on the northern border of Pakistan.</p>
                            <a href="#" class="btn btn-dark">See Detail</a>
                        </div>
                    </div>
                </div>
                <div class="col d-none d-sm-block col-md-3">
                    <div class="card">
                        <img src="Images/Lake-Saif-ul-Malook.jpg" class="img-thumbnail card-img-top"/>
                        <div class="card-body">
                            <h5 class="card-title">Lake Saiful Muluk</h5>
                            <p class="card-text">Lake Saiful Muluk is a must visit tourist place in Pakistan located in Naran valley some 230Km from Islamabad & 20km from Kaghan.</p>
                            <a href="#" class="btn btn-dark">See Detail</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col"></div>
                <div class="col"></div>
                <div class="col">
                    <a href="#">See More</a>
                </div>
            </div>
        </div>
    </section><hr />

    <section id="gallery">
        <p class="h3" style="text-align:center">Gallery</p><br />
        <div class="container">
            <div class="row">
                <div class="col col-md-2 col-sm-4">
                    <a href="#" class="d-block mb-4 h-100">
                        <img src="Images/1.jpg" alt="PIc" class="img-thumbnail img-fluid"/>
                    </a>
                </div>
                <div class="col col-md-2 col-sm-4">
                    <a href="#" class="d-block mb-4 h-100">
                        <img src="Images/NORTH3.jpg" alt="PIc" class="img-thumbnail img-fluid" />
                    </a>
                </div>
                <div class="col col-md-2 d-none d-sm-block">
                    <a href="#" class="d-block mb-4 h-100">
                        <img src="Images/3.jpg" alt="PIc" class="img-thumbnail img-fluid" />
                    </a>
                </div>
                <div class="col col-md-2 d-none d-sm-block">
                    <a href="#" class="d-block mb-4 h-100">
                        <img src="Images/4.jpg" alt="PIc" class="img-thumbnail img-fluid" />
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col col-md-2 col-sm-4">
                    <a href="#" class="d-block mb-4 h-100">
                        <img src="Images/Badshahi-Mosque.jpg" alt="PIc" class="img-thumbnail img-fluid" />
                    </a>
                </div>
                <div class="col col-md-2 col-sm-4">
                    <a href="#" class="d-block mb-4 h-100">
                        <img src="Images/khunjerabPass.jpg" alt="PIc" class="img-thumbnail img-fluid" />
                    </a>
                </div>
                <div class="col col-md-2 d-none d-sm-block">
                    <a href="#" class="d-block mb-4 h-100">
                        <img src="Images/islamabad3.jpg" alt="PIc" class="img-thumbnail img-fluid" />
                    </a>
                </div>
                <div class="col col-md-2 d-none d-sm-block">
                    <a href="#" class="d-block mb-4 h-100">
                        <img src="Images/Lake-Saif-ul-Malook.jpg" alt="PIc" class="img-thumbnail img-fluid" />
                    </a>
                </div>
            </div>
            <div class="row">
                <div class="col"></div>
                <div class="col"></div>
                <div class="col">
                    <a href="#">See More</a>
                </div>
            </div>
        </div>
    </section><hr />
</asp:Content>
