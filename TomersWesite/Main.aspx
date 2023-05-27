<%@ Page Title="Tomer's Surfing Website" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="TomersWesite.Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <head>

        <style>
            header {
                color: indigo;
                text-align: center;
                font-size: 45px;
                font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            }

            h2 {
                color: red;
                text-decoration: underline;
            }

            body {
            }

            nav {
                text-align: center;
                font-size: 40px;
                font: bold;
            }

            span {
                margin-left: 40px;
                font-style: inherit;
            }

            a {
                text-decoration: none;
                color: black;
            }


            .row {
                display: flex;
            }

            .column {
                flex: 33.33%;
                padding: 5px;
            }

            h1 {
                font-size: 40px;
                color: aqua;
            }

            a {
                font-size: 35px;
            }
        </style>
    </head>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="column">
            <img src="https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2020/5/1/mqgjwevxveuc6fcqvdfc/carissa-moore-waves" alt="Surf1" style="width: 100%">
        </div>
        <div class="column">
            <img src="https://www.sixsenses.com/media/1552/fiji-surfing_fiji2_r.jpg?anchor=center&mode=crop&rnd=132266537910000000" alt="Surf2" style="width: 100%">
        </div>
        <div class="column">
            <img src="http://cdn.cnn.com/cnnnext/dam/assets/130624174959-50-surf-spots-the-box.jpg" alt="Surf3" style="width: 100%">
        </div>
    </div>
    <h1>גולשים: </h1>
    <center>
        <a href="Robert%20Kelly%20Slater.aspx">Robert Kelly Slater</a>               
    </center>
    <center>
        <a href="Stephanie%20Gilmore.aspx">Stephanie Gilmore</a>
    </center>
    <center>
        <a href="Gabriel%20Medina.aspx" >Gabriel Medina</a>
    </center>
    <center>
        <a href="Carissa%20Moore.aspx">Carissa Moore</a>
    </center>
    <center>
        <a href="Filipe%20Toledo.aspx">Filipe Toledo</a>
    </center>
    <center>
        <a href="Lakey%20Peterson.aspx">Lakey Peterson</a>
    </center>
    <center>
        <a href="Mick%20Fanning.aspx">Mick Fanning</a>
    </center>
    <center>
        <a href="Julian%20Wilson.aspx">Julian Wilson</a>
    </center>
    <h2></h2>
    <h2></h2>
</asp:Content>
