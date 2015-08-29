<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="event.aspx.cs" Inherits="as2.pri._event" %>
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
    <br />
    <br />
    <br />
    <asp:AccessDataSource runat="server"
        DataFile="~/App_Data/id26346915.accdb" ID="dsAccess"
        SelectCommand="SELECT * FROM [event] ORDER BY [ID]">
        <InsertParameters>
            <asp:FormParameter Name="EventDate" Type="String" FormField="eventdate" />
            <%--<asp:FormParameter Name="Password" Type="String" FormField="pword" />--%>
            <asp:FormParameter Name="Content" Type="String" FormField="content" />

            
        </InsertParameters>
    </asp:AccessDataSource> 
 
    <div class="content">
        <div class="row">
            <div class="col-lg-5">
                <asp:Calendar ID="Cal" runat="server" BackColor="White" BorderColor="#3366CC" DayNameFormat="Shortest"
                    Font-Size="8pt" ForeColor="#003399" Height="251px" Width="365px" OnDayRender="Cal_DayRender"
                    OnInit="Cal_Init" OnSelectionChanged="Cal_SelectionChanged"
                    OnVisibleMonthChanged="Cal_VisibleMonthChanged" BorderWidth="1px" CellPadding="1" Font-Names="Verdana">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" BorderColor="#3366CC" BorderWidth="1px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
                <br />
                <br />
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-5">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <asp:Label runat="server" ID="lbldate"></asp:Label>
                        <br />
                    </div>
                    <asp:BulletedList ID="bl" runat="server" CssClass="list-group" ForeColor="Red">
                    </asp:BulletedList>
                </div>
            </div>
        </div>
    </div>

     <div class="col-md-3">
    <asp:Button ID="BtnSearch" runat="server" Text="Event" CssClass="btn btn-success" OnClick="BtnSearch_Click" />
        </div>
    <br />
</asp:Content>
