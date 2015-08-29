<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="displayAll.aspx.cs" Inherits="as2.pri.search" %>

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

    <asp:AccessDataSource runat="server"
        DataFile="~/App_Data/id26346915.accdb" ID="dsAccess"
        SelectCommand="SELECT * FROM [user] ORDER BY [ID]">
        <InsertParameters>
            <asp:FormParameter Name="Username" Type="String" FormField="pname" />
            <%--<asp:FormParameter Name="Password" Type="String" FormField="pword" />--%>
            <asp:FormParameter Name="Sex" Type="String" FormField="pgender" />

            <asp:FormParameter Name="Age" Type="Int32" FormField="page" />
            <asp:FormParameter Name="Country" Type="String" FormField="pcountry" />
            <asp:FormParameter Name="Birthday" Type="String" FormField="pbirth" />
            <asp:FormParameter Name="Tel" Type="String" FormField="ptel" />
            <asp:FormParameter Name="Email" Type="String" FormField="pemail" />
            <asp:FormParameter Name="Homepage" Type="String" FormField="phome" />
        </InsertParameters>
    </asp:AccessDataSource>

    <div class="panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">All customer Records</h3>
        </div>
        <div class="panel-body">
          

            <asp:GridView ID="customer" runat="server" DataSourceID="dsAccess"
                OnRowCommand="DisplayData" AllowSorting="True" AutoGenerateColumns="False"
                AllowPaging="True">
                <Columns>
                    <asp:ButtonField ButtonType="Button" Text="Detail" ControlStyle-CssClass="btn btn-primary" />
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="true"
                        InsertVisible="False" SortExpression="ID" />


                    <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="true"
                        SortExpression="Username" />
                    <%--<asp:BoundField DataField="Password" HeaderText="Password" ReadOnly="true"
                        SortExpression="Password" />--%>
                    <asp:BoundField DataField="Sex" HeaderText="Sex" ReadOnly="true"
                        SortExpression="Sex" />
                    <asp:BoundField DataField="Age" HeaderText="Age" ReadOnly="true"
                        SortExpression="Age" />
                    <asp:BoundField DataField="Country" HeaderText="Country" ReadOnly="true"
                        SortExpression="Country" />
                    <asp:BoundField DataField="Birthday" HeaderText="Birthday" ReadOnly="true"
                        SortExpression="Birthday" />
                    <asp:BoundField DataField="Tel" HeaderText="Tel" ReadOnly="true"
                        SortExpression="Sex" />
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="true"
                        SortExpression="Email" />
                    <asp:BoundField DataField="Homepage" HeaderText="Homepage" ReadOnly="true"
                        SortExpression="Homepage" />
                </Columns>

            </asp:GridView>
           
              
               

        </div>
    </div>
    <div id="Res" runat="server">
     <div class="panel-default">
        <div class="panel-heading">
            <h3 class="panel-title"> Customer detail</h3>
        </div>
        <div class="panel-body">
            <asp:Label ID="DisplayCustomer" runat="server" />
            </div>
         </div>
    </div>
    <div class="col-md-3">
    <asp:Button ID="BtnSearch" runat="server" Text="Display Records" CssClass="btn btn-success" OnClick="BtnSearch_Click" />
        </div>
    <br />
    <br />
</asp:Content>
