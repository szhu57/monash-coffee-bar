<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="learnmore1.aspx.cs" Inherits="as2.learnmore1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../css/learnmore3.css" rel="stylesheet" />
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
    <div class="learnmore1">
                <h1>Warm Latte</h1>
        <div class="img">
                   <img src="../img/natie2.jpg" width="360" height="420"/>
               </div>
        <div class="text">
             <p>A latte is a coffee drink made with espresso and steamed milk.

The term as used in English is a shortened form of the Italian caffè latte or caffellatte, which means "milk coffee". The word is also sometimes spelled latté or lattè in English with different kinds of accent marks, which can be a hyperforeignism or a deliberate attempt to indicate the word is not pronounced according to the rules of English phonics.Variants include replacing the coffee with another drink base such as masala chai, mate or matcha, and other types of milk, such as soy milk or almond milk are also used.</p>
                <a href="../default.aspx" class="back1">back to homepage</a>
        </div>
               
            </div>
</asp:Content>
