<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TomersWesite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>כניסת משתמש</h1>
    <form name="loginFrm" id="loginFrm" method="post" runat="server">
        <br />
        <br>
        <table id="tablel" dir="rtl" align="center">
            <tr>
                <td>שם משתמש:</td>
                <td>
                    <input type="text" name="uName" /></td>
            </tr>
            <tr>
                <td>סיסמא:</td>
                <td>
                    <input type="password" name="pw" id="pw" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center"></td>
                <td>
                    <input type="submit" name="submit" value="  התחבר  " />
                </td>
            </tr>
        </table>
    </form>

</asp:Content>
