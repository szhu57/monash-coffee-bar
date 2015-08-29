<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="email.aspx.cs" Inherits="LectureExamples.Topic8.SendEmail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <link href="../css/my-style.css" rel="stylesheet" />
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
    <asp:AccessDataSource ID="dsCustomers" runat="server"
        DataFile="~/App_Data/id26346915.accdb"
        SelectCommand="SELECT ID, Username, Email FROM [user]"></asp:AccessDataSource>

    <br />
    <hr />


    <div class="email">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Customer info </h3>
            </div>
            <div class="panel-body ">
                <asp:GridView ID="gvCustomers" runat="server" DataSourceID="dsCustomers" DataKeyNames="ID"
                    AutoGenerateColumns="false"
                    CssClass="table table-hover" CellPadding="5">
                    <Columns>
                        <asp:BoundField DataField="ID" Visible="false" />
                        <asp:BoundField DataField="Username" HeaderText="Full Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:TemplateField HeaderText="Select">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="chkEmail" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Label ID="lblMail" CssClass=" alert-danger" runat="server" />
            </div>
        </div>
        <br />

        <br />
        <div class="panel panel-info">
            <div class="panel-heading">
                <h3 class="panel-title">Send Email</h3>
            </div>
            <div class="panel-body">
                <table class="table">
                    <tr>
                        <td class="emailHeader" width="15%">From
                        </td>
                        <td class="emailRow">
                            <asp:Label ID="Label1" runat="server" Text="Coffee Bar"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="emailHeader" width="15%">
                            <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
                        </td>
                        <td class="emailRow">
                            <asp:TextBox ID="txtSubject" Width="350" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="emailHeader" Width="15%">Attachment
                        </td>
                        <td class="emailRow">
                            <asp:FileUpload ID="fileUpload" runat="server" Width="430" />
                        </td>
                    </tr>
                    <tr>
                        <td class="emailHeader">Message
                        </td>
                        <td class="emailRow">
                            <asp:TextBox runat="server" ID="txtMsg" TextMode="MultiLine" Columns="55" Rows="15" />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="SendMail" runat="server" CssClass="btn btn-primary" OnClick="SendingEmail" Text="Send " />
                <br />
                <br />
            </div>
        </div>
        <br />
        <div class="text-right">
            <asp:Button ID="BtnSearch" runat="server" Text="Send Email" CssClass="btn btn-lg btn-success" OnClick="Email_Click" />
        </div>
        <br />
        </div>
</asp:Content>
