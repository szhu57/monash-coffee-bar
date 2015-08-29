<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="as2.pri.displayAll" %>

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
    
    <asp:AccessDataSource runat="server" DataFile="~/App_Data/id26346915.accdb"
        ID="dsAccess"></asp:AccessDataSource>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Search Customer Records</h3>
        </div>
        <div class="panel-body">
            <table class="table">
                <tr>
                    <td cosplan="2">Please enter part or all of the customer's name
                            <br />
                    </td>
                </tr>
                <tr>
                    <td class="text">
                        <asp:TextBox ID="txtName" runat="server" CssClass=" form-control"> </asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnName" OnClick="searchCustomer" runat="server" Text="Search"
                            CssClass="btn btn-primary" CommandName="Username" />
                    </td>
                </tr>

                <tr>
                    <td><b>or</b></td>
                </tr>
                <tr>
                    <td colspan="2">Please enter part, or all, of the customers'
country.<br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtCountry" runat="server"
                            CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnCountry" OnClick="searchCustomer"
                            runat="server"
                            Text="Search"
                            CssClass="btn btn-primary" CommandName="Country" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">Please enter part, or all, of the customers'
Email address.<br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"
                            CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnEmail" OnClick="searchCustomer"
                            runat="server"
                            Text="Search"
                            CssClass="btn btn-primary" CommandName="Email" />
                    </td>
                </tr>


            </table>
        </div>
    </div>
    <div id="Res" class="row" runat="server">
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">Search Result</h3>
            </div>
            <div class="panel-body">
                <asp:ListView ID="lv" runat="server">
                    <ItemTemplate>
                        <table class="table table-hover">
                            <tr>

                                <td>
                                    <b>Username:</b> <%# Eval("Username") %><br />
                                    <b>Age: </b><%# Eval("Age") %><br />
                                    <b>Birthday:</b> <%# Eval("Birthday") %><br />
                                    <b>Tel: </b><%# Eval("Tel") %><br />
                                    <b>Email:</b> <%# Eval("Email") %><br />
                                    <b>Country: </b><%# Eval("Country") %><br />
                                    <b>HomePage:</b> <%# Eval("Homepage") %>
                                </td>
                            </tr>

                        </table>
                    </ItemTemplate>
                </asp:ListView>
            </div>
        </div>

    </div>
     <div class="col-md-3">
    <asp:Button ID="BtnSearch" runat="server" Text="Search Records" CssClass="btn btn-success" OnClick="BtnSearch_Click" />
        </div>
    <br />
    <br />


</asp:Content>
