<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TomersWesite.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table{
            border:1px solid black;
            margin: auto;
            border-collapse: collapse;
        }
        td,th{
            border:1px solid black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <table>
        <tr>
            <td></td>
            <td>טופס רישום</td>
            <td></td>
        </tr>
        <tr>
            <td>שם משתמש</td>
            <td><input type ="text" id ="uName" name ="uName" /></td>
            <td>
                <input type ="text" id ="muName" size ="50"
                    style ="display:none; background-color:silver; font-weight: bold;"
                    disabled="disabled"/>
                    
            </td>
        </tr>
        <tr>
            <td>שם פרטי</td>
            <td><input type ="text" id ="fName" name ="fName" /></td>
            <td><input type ="text" id ="mfName" size ="50"
                    style ="display:none; background-color:silver; font-weight: bold;"
                    disabled="disabled"/></td>
        </tr>
        <tr>
            <td>שם משפחה</td>
            <td><input type ="text" id ="lName" name ="lName" /></td>
            <td><input type ="text" id ="mlName" size ="50"
                    style ="display:none; background-color:silver; font-weight: bold;"
                    disabled="disabled"/></td>
        </tr>
        <tr>
            <td>דוא"ל</td>
            <td><input type ="text" id ="email" name ="email" /></td>
            <td><input type ="text" id ="mEmail" size ="50"
                    style ="display:none; background-color:silver; font-weight: bold;"
                    disabled="disabled"/></td>
        </tr>
        <tr>
            <td>מין</td>
            <td>RADIO</td>
            <td></td>
        </tr>
        <tr>
                
            <td>שנת לידה</td>
            <td>COMBO</td>
            <td></td>
        </tr>
        <tr>
                
            <td>ישוב מגורים</td>
            <td>COMBO</td>
            <td></td>
        </tr>
        <tr>
                
            <td>טלפון</td>
            <td>COMBO+Textbox+RedLebel</td>
            <td></td>
        </tr>
        <tr>
                
            <td>תחביבים</td>
            <td colspan ="2">CheckBoxes span = 2</td>
        </tr>
        <tr>
                
            <td>סיסמה</td>
            <td>INPUT + red label</td>
            <td>OUTPUT</td>
        </tr>
        <tr>
                
            <td>בדיקת סיסמה</td>
            <td>INPUT</td>
            <td></td>
        </tr>
    </table>
</body>
</html>
