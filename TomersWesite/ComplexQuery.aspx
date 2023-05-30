<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ComplexQuery.aspx.cs" Inherits="TomersWesite.ComplexQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        h2{
            direction: ltr;
            text-align:center;
        }
    </style>
    <script src="Scripts/ComplexQuery.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>שאילתה דינאמית מורכבת</h1>
     <h2><%= sqlSelect %></h2>
    <form id="Form1" method="post" runat="server">
        <%=Manager %>
        <%--<div class="h-100 d-flex align-items-center justify-content-center">
        <table border="1">
            <tr>
                <td width="20">
                    <select name="field1" id="field1" onclick="detectField1();">
                        <option value="lName">שם משפחה</option>
                        <option value="fName">שם פרטי</option>
                        <option value="email">דוא"ל</option>
                        <option value="gender">מגדר</option>
                        <option value="yearBorn">שנת לידה</option>
                        <option value="prefix">קידומת טלפון</option>
                        <option value="phone">טלפון</option>
                        <option value="hobies">תחביב</option>
                    </select>
                </td>
                <td width="150">
                    <div id="query1" align="center"></div>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" dir="ltr">
                    <input type="radio" name="op" value="and" />
                    AND
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="op" value="or" checked />
                    OR
                </td>
            </tr>
            <tr>
                <td>
                    <select name="field2" id="field2" onclick="detectField2();">
                        <option value="lName">שם משפחה</option>
                        <option value="fName">שם פרטי</option>
                        <option value="email">דוא"ל</option>
                        <option value="gender">מגדר</option>
                        <option value="yearBorn">שנת לידה</option>
                        <option value="prefix">קידומת טלפון</option>
                        <option value="phone">טלפון</option>
                        <option value="hobies">תחביב</option>
                    </select>
                </td>
                <td width="150">
                    <div id="query2" align="center"></div>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" name="submit" value="חפש" />
                </td>
            </tr>
        </table>
            </div>--%>
    </form>

    <table>
        <%=st %>
    </table>
    <h3><%=msg %></h3>
</asp:Content>
