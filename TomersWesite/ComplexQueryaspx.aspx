<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ComplexQueryaspx.aspx.cs" Inherits="TomersWesite.ComplexQueryaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border ="1" align ="center">
        <tr>
            <td width ="20">
                <select name ="field1" onclick ="detectField1();">
                <option value ="lName">שם משפחה</option>
                <option value ="fName">שם פרטי</option>
                <option value ="eMail">דוא"ל</option>
                <option value ="gndr">מגדר</option>
                <option value ="yearBorn">שנת לידה</option>
                <option value ="prefix">קידומות טלפון</option>
                <option value ="phone">טלפון</option>
                <option value ="hobby">תחביב</option>
                </select>
            </td>
            <td width ="150">
                <div id ="query1" align ="center"></div>
            </td>
        </tr>
        <tr>
            <td colspan ="2" align ="center" dir ="ltr">
                <input type ="radio" name ="op" value ="and"/> AND
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type ="radio" name ="op" value ="or" checked/> OR
            </td>
        </tr>
        <tr>
            <td>
                <select name ="field1" onclick ="detectField1();">
                <option value ="lName">שם משפחה</option>
                <option value ="fName">שם פרטי</option>
                <option value ="eMail">דוא"ל</option>
                <option value ="gndr">מגדר</option>
                <option value ="yearBorn">שנת לידה</option>
                <option value ="prefix">קידומות טלפון</option>
                <option value ="phone">טלפון</option>
                <option value ="hobby">תחביב</option>
                </select>
            </td>
            <td width ="150">
                <div id ="query2" align ="center"></div>
            </td>
        </tr>
        <tr>
            <td colspan ="2" align ="center">
            <input type ="submit" value ="חפש" />
        </td>
        </tr>
    </table>
</asp:Content>
