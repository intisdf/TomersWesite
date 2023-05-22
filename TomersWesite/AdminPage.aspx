<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="TomersWesite.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>דף ניהול</h1>

    <div style ="text-align:center;"><%= msg %></div>
    <a href="SelectByNBame.aspx">SelectByNBame.aspx</a>
    <a href="ShowTable.aspx">ShowTable.aspx</a>
</asp:Content>
