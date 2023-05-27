<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Maarechet Shaot.aspx.cs" Inherits="TomersWesite.Maarechet_Shaot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         table {
            margin-left: auto;
            margin-right: auto;
        }

        th {
            border: 2px solid black;
        }

        td {
            border: 2px solid black;
        }

        body {
            direction: rtl;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <%=st %>
    </table>
    <h3><%=msg %></h3>
</asp:Content>
