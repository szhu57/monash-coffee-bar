<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="learnmore2.aspx.cs" Inherits="as2.learnmore2" %>
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
    <div class="learnmore2">
                <h1>Machiatto</h1>
        <div class="img">
                   <img src="../img/maqiduo2.jpg" width="360" height="460"/>
               </div>
        <div class="text">
             <p>Macchiato is an espresso coffee drink with a small amount of milk added, today usually foamed milk. In Italian, macchiato means 'stained' or 'spotted' so the literal translation of caffè macchiato is 'stained coffee', or coffee with a spot of milk.The origin of the name 'macchiato' stems from baristas needing to show the serving waiters the difference between an espresso and an espresso with a tiny bit of milk in it; the latter was 'marked'. The idea is reflected in the Portuguese name for the drink: café pingado, meaning coffee with a drop.</p>
                <a href="../default.aspx" class="back2">back to homepage</a>
        </div>
               
            </div>
</asp:Content>
