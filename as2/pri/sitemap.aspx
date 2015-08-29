<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="sitemap.aspx.cs" Inherits="as2.pri.sitemap" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <hr />
    <div class="row">
        <div class="panel panel-primary">
            <div class="panel-heading">

                <h3 class=" text-center panel-title  ">SiteMap</h3>


            </div>
            <div class="panel-body ">


                <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ShowLines="True">
                </asp:TreeView>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />

            </div>
        </div>
        <div class="col-md-4">
            <asp:Button ID="Button1" runat="server" Text="Sitemape" CssClass="btn  btn-lg btn-primary" OnClick="SiteMap" />
        </div>

    </div>
    

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
