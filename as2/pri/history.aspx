<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="as2.OurHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/ourhistory.css" rel="stylesheet" />
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
    <div class="main">
        <p>Our History</p>
        <div class="main1">
             <div class="img1">
            <img src="../img/cleanhouse.jpg" width="550" height="400" />
        </div>
        <div class="text1">
            <p>A year ago, I posed this question at our annual shareholders meeting. This report includes some answers to that question.</p>
            <p>We have always believed building a great, enduring company requires being performance-driven through the lens of humanity. I am proud that we not only achieved another year of record financial performance in 2014, but we did so while doing more for our people and the communities we serve than at any time in our history. By staying true to our mission, values and guiding principles, I believe we’ve proven it is possible to build a world-class company with a conscience.</p>
            <p>Over the next few years, our efforts will increasingly focus in three areas where we think we can have the biggest impact – building a future with farmers, pioneering green retail on a global scale, and creating pathways to opportunity for young people. </p>
        </div>
        </div>
       <div class="main2">
            <div class="text2">
            <p>As a company that relies on agricultural products, we has long been aware that the planet is our most important business partner.</p>
            <p>We are committed to addressing climate change by minimizing our environmental footprint and creating meaningful and sustained change. This work includes our approach to green retail: building more energy efficient stores and facilities; conserving energy and water; investing in renewable energy; and exploring new solutions for recycling and making our cups sustainable.</p>
            <p>While some of the ambitious environmental goals we set in 2008 are within reach, we have discovered unexpected challenges with others. This doesn’t mean we should aim lower. We believe in the importance of setting aspirational targets rather than settling for less ambitious targets, as well as learning from our experience to inform next steps.</p>
        </div>
        <div class="img2">
            <img src="../img/coffeeshop.jpg" width="520" height="400" />
        </div>
       </div>
          <div class="main3">
                <div class="img3">
            <img src="../img/coffeebean.jpg" width="550" height="400" />
        </div>
                <div class="text3">
            <p>Our Journey to 100% Ethically Sourced</p>
            <p>In 1999, when we were a company of just over 2,000 stores in a handful of countries, we recognized the need to do more to ensure the long-term supply of the high-quality coffee on which our business depends. We turned to Conservation International (CI) to help us promote environmentally responsible growing methods.</p>
            <p>Addressing the environmental impact of coffee farming was only one piece of the puzzle. We needed a holistic approach to sourcing that also ensured fair pay and working conditions. In 2001, CI helped us develop broad quality, social, environmental and economic guidelines.</p>
            <p>Over the past decade, C.A.F.E. Practices has helped positively impact millions of workers, and improved the long-term environmental and social conditions on thousands of participating farms around the world. In our journey to 100% ethically sourced, we plan to work to continue to improve sustainability across our industry.</p>
        </div>

       </div>
      
    </div>

</asp:Content>
