<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="learnmore3.aspx.cs" Inherits="as2.learnmore3" %>
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
    <div class="learnmore3">
                <h1>Flat White</h1>
        <div class="img">
                   <img src="../img/flatwhite2.jpg" width="300" height="410"/>
               </div>
        <div class="text">
             <p>A flat white is a coffee beverage that originated in New Zealand and Australia. It is prepared by pouring microfoam (steamed milk consisting of small, fine bubbles with a glossy or velvety consistency) over a single or double shot of espresso. It is somewhat similar to the traditional 5 oz cappuccino or the latte although smaller in volume, therefore having a higher proportion of coffee to milk, and milk that is more velvety in consistency – allowing the espresso to dominate the flavour, while being supported by the milk.[</p>
                <a href="../default.aspx" class="back3">back to homepage</a>
        </div>
               
            </div>
</asp:Content>
