<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Mick Fanning.aspx.cs" Inherits="TomersWesite.Mick_Fanning" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .column {
            flex: 33.33%;
            padding: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>מיק פאנינג</h1>
    <h4>  
    מיק פאנינג, אלוף עולם כפול, עבר די הרבה במעגל האליפות ונשאר רלוונטי באותה מידה למרות שעזב את הסיבוב העולמי מוקדם יותר השנה.
    </h4>
    <div class="row">
        <div class="column">
            <img src="Pics/Mick%20Fanning.png" alt="Julian Wilson" style="width:100%">
        </div>
        <div class="column">
            <img src="Pics/Mick%20Fanning1.png" alt="Julian Wilson1" style="width:100%">
        </div>
        <div class="column">
            <img src="Pics/Mick%20Fanning2.png" alt="Julian Wilson2" style="width:100%">
        </div>
    </div>
</asp:Content>
