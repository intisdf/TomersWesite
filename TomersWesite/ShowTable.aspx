<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ShowTable.aspx.cs" Inherits="TomersWesite.ShowTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        h1 { text-align: center; color: black; }
        h2 { direction: ltr; text-align: center; }
        h3 {text-align: center; color: maroon; }
        table, th, td { border: 1px solid black; }
        table { margin: 0px auto; }
        th, td { text-align: center;}
        .right {text-align: right; }
        .left {text-align: left; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>טבלת המשתמשים</h1>
    <h2><%= sqlSelect %></h2>

    <table>
        <%= st %>
    </table>

    <h3><%= msg %></h3>
</asp:Content>
