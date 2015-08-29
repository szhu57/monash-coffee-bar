<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="as2.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/FAQ.css" rel="stylesheet" />
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
        <p>FREQUENTLY ASKED QUESTIONS</p>
     <div class="Q1">
          <p>Question1: How can I join you to work?</p>
    <p>Answer: The best way of application is will be sent via email in the form of your resume to jobsn@coffiebar.cn
Your resume will be saved a year in our resume database.We will carefully keep your information and contact with you at any time any job opportunities fit your skills or qualifications.</p>
    </div>
     <div class="Q2">
          <p>Question2:What else do you sell except coffee? </p>
    <p>Answer: In our store, not only have fragrance of coffee, and all kinds of fresh, delicious cakes.They and coffee together taste perfect collocation.The cafe food very suitable for coffee taste, different cakes for breakfast, lunch and afternoon tea at different times, bring you different experience. </p>
         <p>Due to the delivery requirements and restrictions for the determination of the freshness of food, and local consumer acceptance of different taste, we are in different city and stores provide food choice is different.Sandwiches, salad, each, breads, cakes and cheese cake is we provide some of the major food.</p>
    </div>
     <div class="Q3">
         <p>Question3: When was the company founded?</p>
    <p>Answer: Our company was founded in 1971,and it is the world's leading specialty coffee retailer, baking and brand owners</p>
    </div>
     <div class="Q4">
         <p>Question4: how can I join a retail store?</p>
    <p>Answer: Thank you very much for your concern and support for our company. But I'm sorry to tell you that the our company in China do not use independent joining chain mode of operation. At present, we in addition to the existing partners in China, the rest is using the mode of operation directly by the company.We thank you very much for your enquiry, and look forward to your support as always.</p>
    </div>
     <div class="Q5">
         <p>Question5: When will you have a discount?</p>
    <p>Answer: Every year we have a lot of discounts. Each month we will have 8 discount at the first day. Basically, every festival there are promotional activities, activities can refer to the official website for details.</p>
    </div>
    </div>
</asp:Content>
