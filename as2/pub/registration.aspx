<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="as2.pub.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/jquery-2.1.4.min.js"></script>
    <hr />
    <br />
    <asp:AccessDataSource runat="server"
        DataFile="~/App_Data/id26346915.accdb" ID="dsAccess"
        InsertCommand="INSERT INTO [user] ([Username], [Password], [Sex], [Age],[Country],[Birthday],[Tel],[Email],[Homepage]) VALUES (?, ?, ?, ?,?, ?, ?, ?,?)"
        SelectCommand="SELECT * FROM [user] where [id]">
        <InsertParameters>
            <asp:FormParameter Name="Username" Type="String" FormField="pname" />
            <asp:FormParameter Name="Password" Type="String" FormField="pword" />
            <asp:FormParameter Name="Sex" Type="String" FormField="pgender" />
            <asp:FormParameter Name="Age" Type="Int32" FormField="page" />
            <asp:FormParameter Name="Country" Type="String" FormField="pcountry" />
            <asp:FormParameter Name="Birthday" Type="String" FormField="pbirth" />
            <asp:FormParameter Name="Tel" Type="String" FormField="ptel" />
            <asp:FormParameter Name="Email" Type="String" FormField="pemail" />
            <asp:FormParameter Name="Homepage" Type="String" FormField="phome" />
        </InsertParameters>
    </asp:AccessDataSource>
    <div class="row" id="RegDiv" runat="server">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">Registration</h3>
            </div>
            <div class=" panel-body panel-default">
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID"
                    HeaderStyle-HorizontalAlign="Center" HeaderStyle-Font-Bold="true" CellPadding="3"
                    DataSourceID="dsAccess" DefaultMode="Insert">
                    <InsertItemTemplate>
                        <div class="form-horizontal" role="form">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Username" class=" control-label alert-success"></asp:Label>
                                    <asp:TextBox ID="pname" runat="server" Text='<%#Bind("Username")%>' class="form-control" placeholder="please input you username"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="pnameValidate" runat="server" ControlToValidate="pname" ForeColor="#CC3333" EnableClientScript="false"
                                        ErrorMessage="you have not input the username"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Password" class="control-label alert-success"></asp:Label>
                                    <asp:TextBox ID="pword" runat="server" Text='<%#Bind("Password")%>' TextMode="Password" class="form-control" placeholder="please input your password,no less than 6 characters " ViewStateMode="Disabled"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="pwordFieldValidator2" runat="server"
                                        ForeColor="#CC3333" EnableClientScript="false" ErrorMessage="you must input the password" ControlToValidate="pword"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="pwordrExpressionValidator1" runat="server" ErrorMessage="the password range is between  6 and 10 characters "
                                        ForeColor="#CC3333" EnableClientScript="false" ControlToValidate="pword" ValidationExpression="\w{6,10}">
                                    </asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <asp:Label for="Label3" runat="server" Text="Password confirm" class=" control-label alert-success"></asp:Label>
                                    <asp:TextBox ID="pword2" runat="server" class="form-control" TextMode="Password" placeholder="please input your password again "></asp:TextBox>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="your password input is not consistent " ControlToValidate="pword2"
                                        ControlToCompare="pword" ForeColor="#CC3333" EnableClientScript="false">
                                    </asp:CompareValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                        ForeColor="#CC3333" EnableClientScript="false" ErrorMessage="you must input the password again" ControlToValidate="pword2"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="Gender" class=" control-label alert-success"></asp:Label>
                                    <asp:RadioButtonList ID="pgender" runat="server" Text='<%#Bind("Sex") %>'>
                                        <asp:ListItem Selected="true">male</asp:ListItem>
                                        <asp:ListItem>female</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                                <div class="form-group">
                                    <asp:Label for="page" runat="server" Text="Age" class=" control-label alert-success"></asp:Label>

                                    <asp:TextBox ID="page" runat="server" Text='<%#Bind("Age") %>' class="form-control"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="please input your  age" ControlToValidate="page"></asp:RequiredFieldValidator>
                                    <asp:RangeValidator ID="VldAge" runat="server" ErrorMessage="This age is not between 0 and 120." ForeColor="#CC3333"
                                        Type="Integer" MaximumValue="120" MinimumValue="0" ControlToValidate="page">
                                    </asp:RangeValidator>
                                </div>
                            </div>
                            <div class="col-md-4">
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Label for="country" runat="server" Text="country" class=" control-label alert-success"></asp:Label>
                                    <asp:DropDownList ID="pcountry" runat="server" Text='<%#Bind("Country")%>'>
                                        <asp:ListItem Selected="True">China</asp:ListItem>
                                        <asp:ListItem>Australia</asp:ListItem>
                                        <asp:ListItem>British</asp:ListItem>
                                        <asp:ListItem>USA</asp:ListItem>
                                        <asp:ListItem>Canadia</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="#CC3333" ErrorMessage="please select country" ControlToValidate="pcountry"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group" >

                                    <asp:Label for="pbirth" runat="server" Text="Birthday" class=" control-label alert-success"></asp:Label>

                                    <asp:TextBox ID="pbirth" runat="server" Text='<%#Bind("Birthday")%>' CssClass="form-control"></asp:TextBox>
                                      <%--<script >
                                           $(function () {
                                        $("#<%= pbirth.ClientID %>").datepicker({
                                            changeMonth: true,
                                            changeYear: true
                                        });
                                    });
                                    </script>--%>
                                </div>

                                <div class="form-group">
                                    <asp:Label for="Tel" runat="server" Text="Tel" class=" control-label alert-success"></asp:Label>
                                    <asp:TextBox ID="ptel" runat="server" Text='<%#Bind("Tel")%>' class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="please input your phone num" ForeColor="#CC3333" ControlToValidate="ptel"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please input correct phone num" ForeColor="#CC3333" ControlToValidate="ptel" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <asp:Label for="pemail" runat="server" Text="Email" class=" control-label alert-success"></asp:Label>
                                    <asp:TextBox ID="pemail" runat="server" Text='<%#Bind("Eamil")%>' class="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatoremail" runat="server" ErrorMessage="please input your email" ForeColor="#CC3333" ControlToValidate="pemail"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidatoreamil" runat="server" ErrorMessage="please input correct email address" ForeColor="#CC3333" ControlToValidate="pemail" ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group">
                                    <asp:Label for="phome" runat="server" Text="Homepage" class=" control-label alert-success"></asp:Label>
                                    <asp:TextBox ID="phome" runat="server" Text='<%#Bind("Homepage")%>' class="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <asp:Button ID="btnInsert" runat="server" OnClick="findCustomer" CausesValidation="True" CommandName="Insert" class="btn-success" Text="Register" />
                            <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" class="btn-primary" Text="Cancel" />
                        </div>
                    </InsertItemTemplate>
                </asp:FormView>
            </div>
        </div>
        <div class="text-right">
            <%-- <asp:Button ID="BtnAddRecords" runat="server" Text="Add Records" CssClass="btn btn-primary" OnClick="BtnAddRecords_Click" />--%>
            <a runat="server" href="~/pri/displayCode.aspx?filename=~/pub/registration.aspx">
                <img src="../img/add.png" /></a>
        </div>
    </div>
    <div class="row" id="ResultDiv" runat="server">
        <div class="panel panel-success">
            <div class="panel-heading ">
                <h3 class="panel-title ">Registration info</h3>
            </div>
            <div class="panel-body">
                <asp:Label ID="LblResult" runat="server"></asp:Label>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
