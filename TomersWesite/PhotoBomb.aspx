<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PhotoBomb.aspx.cs" Inherits="TomersWesite.PhotoBomb" %>
  <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4" aria-label="Slide 5"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active" data-bs-interval="2000">
            <img src="Pics/Pic24.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                <%--    <h5>טבלת משתמשים</h5>--%>
                 <%--   <p>הגדרות טבלת המשתמשים</p>--%>
                </div>
            </div>
           
            <div class="carousel-item " data-bs-interval="2000">
              <img src="Pics/Pic11.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <%--  <h5>טבלת משתמשים</h5>
                    <p>שאילתת ה- CREATE של טבלת המשתמשים</p>--%>
                </div>
            </div>
            <div class="carousel-item">
                <img src="Pics/Pic14.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">  
                   <%-- <h5>טבלת משתמשים</h5>
                    <p>רשימת המשתמשים</p>--%>
                </div>
            </div>
            <div class="carousel-item">
                <img src="Pics/Pic44.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
<%--                    <h5>טבלת מנהלים</h5>
                    <p>הגדרה ושאילתת יצירת טבלת המנהלים</p>--%>
                </div>
            </div>
            <div class="carousel-item">
                <img src="Pics/Pic42.png" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                 <%--   <h5>טבלת מנהלים</h5>
                    <p>רשימת המנהלים</p>--%>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</asp:Content>