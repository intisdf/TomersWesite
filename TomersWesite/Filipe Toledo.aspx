<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Filipe Toledo.aspx.cs" Inherits="TomersWesite.Filipe_Toledo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .column {
            flex: 33.33%;
            padding: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Filipe Toledo </h1>
    <h4>
        הגולש המקצועי פיליפה טולדו הוא מתחרה טוב עקבי ומאורגן. ארץ הולדתו היא ברזיל, אבל הוא התחרה בכל רחבי היקום מאז שהיה ילד קטן, והרוויח ציונים גבוהים מאוד
        . מסיבה זו, הוא מדורג במקום הראשון ברשימת הספורטאים שיתחרו באולימפיאדת טוקיו 2020.
    </h4>
    <div class="row">
        <div class="column">
            <img src="Pics/Filipe%20Toledo.png" alt="Filipe Toledo" style="width:100%">
        </div>
        <div class="column">
            <img src="Pics/Filipe%20Toledo1.png"alt="Filipe Toledo1" style="width:100%">
        </div>
        <div class="column">
            <img src="Pics/Filipe%20Toledo2.png" alt="Filipe Toledo2" style="width:100%">
        </div>
    </div>
</asp:Content>
