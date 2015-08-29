<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="as2.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="css/my-style.css" rel="stylesheet" />
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            <div class="col-md-3 col-md-offset-9">
                <p>
                    Welcome <b>
                        <asp:LoginName ID="LoginUser" runat="server" />
                    </b>
                    <asp:Button ID="BtnSignOff" runat="server" Text="Sign out" CssClass="btn btn-sm btn-success" OnClick="BtnSignOff_Click" />
                </p>
            </div>
        </LoggedInTemplate>
    </asp:LoginView>
    <br />
    <br />
    <br />
    <div class="row">
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" style="text-align: center">
                <div class="item active">
                    <img alt="First slide" src="img/1.jpg" />
                </div>
                <div class="item">
                    <img alt="Second slide" src="img/2.jpg" />
                </div>
                <div class="item">
                    <img alt="Third slide" src="img/3.jpg" />
                </div>
                <div class="item">
                    <img alt="forth slide" src="img/6.jpg" />
                </div>

            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>

    </div>


    <!--PhotoSlides-->


    <div class="container">
        <div class="row">
            <div class="col-sm-6 " style="padding-top: 119.5px;">
                <h1>Warm Latte</h1>
                <p>Latte is milk and espresso and intertwined. People in this cup of latte, meet, near, and fall in love. About the fusion of art, in which a French vanilla latte and strong alcohol in the dark caramel latte</p>
                <a href="./pub/learnmore1.aspx" class="btn btn-primary">learn more</a>
            </div>
            <div class="col-sm-6 text-right" style="padding-top: 100px;">
                <img src="../img/natie.png" />
            </div>

        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-6 ">
                <img src="../img/maqiduo.jpg"  class="img-circle"/>
            </div>
            <div class="col-sm-6 align-vertical ">
                <h1>Machiatto</h1>
                <p>
                    Caramel Macchiato is on thick hot milk add espresso and vanilla, then pour drinks made of pure Caramel, the fusion of three different flavors. "Caramel" means the Caramel. Caramel macchiato, meaning the stamp of the "sweet".
                </p>
                <a href="./pub/learnmore2.aspx" class="btn btn-primary">learn more</a>
            </div>
        </div>
        </div>
  
    <div class="container">
        <div class="row">
            <div class="col-sm-6 align-vertical " style="padding-top: 20px;">
                <h1>Flat white</h1>
                <p>A third Italian enrichment, two-thirds of boiled milk and a little spiral bubble. that is a unique style of the flat white. Invented by New Zealand and achieve a great popular in American and England</p>
                <a href="./pub/learnmore3.aspx" class="btn btn-primary">Learn more</a>
            </div>
            <div class="col-sm-6 text-right " style="margin-bottom: 60px;">
                <img src="../img/flatwhite3.jpg" width="450" height="350"  class="img-circle" />
            </div>

        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/ad/Adrotator.xml" />
            <p>Click the following button to open up a new tab in the browser for checking the codes of this page and its associated XML file.</p>
            <asp:Button ID="BtnAd" runat="server" Text="AdRotator" CssClass="btn btn-primary" OnClick="AdRotator_Click" />
        </div>
        <div class="col-md-4">
            <asp:AdRotator ID="AdRotator2" runat="server" AdvertisementFile="~/ad/Adrotator.xml" />
            <p>Click the following button to open up a new tab in the browser for checking the codes of the Master Page.</p>
            <asp:Button ID="BtnMaster" runat="server" Text="Master Page" CssClass="btn btn-primary" OnClick="Master_Click" />
        </div>
        <div class="col-md-4">
            <asp:AdRotator ID="AdRotator3" runat="server" AdvertisementFile="~/ad/Adrotator.xml" />
            <p>Click the following button to open up a new tab in the browser for checking the codes of the About us.</p>
            <asp:Button ID="BtnAbout" runat="server" Text="About us" CssClass="btn btn-primary" OnClick="About_Click" />
        </div>
    </div>



    <hr />
    <br />
</asp:Content>
