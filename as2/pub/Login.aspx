<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="as2.pub.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title panel-success">Login</h3>
                </div>

                <div class="panel-body">
                    <div class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="InputUsername" class=" col-sm-2 control-label">
                                Username
                            </label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="InputUsername" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="VldUsername" runat="server" ControlToValidate="InputUsername"
                                    ErrorMessage="Please input your username!" ForeColor="#CC3333" EnableClientScript="false"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="InputPassword" class=" col-sm-2 control-label">
                                Password
                            </label>
                            <div class="col-sm-10">
                                <asp:TextBox ID="InputPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="VldPwd" runat="server" ErrorMessage="Please input your password!"
                                    ControlToValidate="InputPassword" ForeColor="#CC3333" EnableClientScript="false"></asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-2">
                                <asp:Button ID="BtnSigin" runat="server" Text="Sign in" CssClass="btn btn-success" OnClick="BtnSigin_Click" />
                                <a href="registration.aspx">
                                    <input id="Button1" type="button" value="Register" class="btn btn-default" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <div class="row">
            <div class="well">
                <asp:Label ID="LblResult" runat="server" Text="">

                </asp:Label>
            </div>
        </div>
    </div>

     <div class="col-md-4">
            <asp:Button ID="Button2" runat="server" Text="Login" CssClass="btn  btn-lg btn-success" OnClick="Login_Click" />
        </div>
    <br />
    <hr />
    <br />


</asp:Content>
