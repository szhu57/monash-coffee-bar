<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="displayCode.aspx.cs" Inherits="as2.pri.displayCode" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link href="../js/prettify.css" rel="stylesheet" />
    <script src="../js/prettify.js"></script>
   
    <div>
        <asp:Label ID="Label1" runat="server" CssClass="alert-warning" Text="Source Code"></asp:Label>
    
    <asp:Label ID="FileName"
        CssClass="" runat="server" />
        </div>
        <pre class=" prettyprint  ">
          
                    <asp:Label ID="Code" runat="server" />
           
                         </pre>
    
    <script>
        $(window).load(function () {
            $("pre").addClass("prettyprint");
            prettyPrint();
        })
    </script>
</asp:Content>
