<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="TomersWesite.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table{
            border: 1px solid red;
            margin : auto ;
            border-collapse:collapse;
        }
        td,th{
            border: 1px solid navy;
        }
        
    </style>
    <script src ="Scripts.CheckMyForm.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat ="server" onsubmit="return chkForm();">
        <table>
            <tr>
                <th></th>
                <th>טופס רישום</th>
                <th></th>
            </tr>
            <tr>
                <td>
                    <input type ="text" id ="muName" size ="50"
                        style ="display:none; background-color: silver; font-weight:bold;"
                        disabled ="disabled"; />
                </td>
                <td>
                    <input type ="text" id ="uName" name ="uName" />
                </td>
                <td>שם משתמש</td>
            </tr>
            <tr>
                <td>
                    <input type ="text" id ="mfName" size ="50"
                        style ="display:none; background-color: silver; font-weight:bold;"
                        disabled ="disabled"; />
                </td>
                <td>
                    <input type ="text" id ="fName" name ="fName" />
                </td>
                <td>שם פרטי</td>
            </tr>
            <tr>
                <td>
                    <input type ="text" id ="mlName" size ="50"
                        style ="display:none; background-color: silver; font-weight:bold;"
                        disabled ="disabled"; />
                </td>
                <td>
                    <input type ="text" name= "lName" id ="lName" />
                </td>
                <td>שם משפחה</td>
            </tr>
            <tr>
                <td>
                    <input type ="text" id ="mEmail" size ="50"
                        style ="display:none; background-color: silver; font-weight:bold;"
                        disabled ="disabled"; />
                </td>
                <td>
                    <input type ="text" name= "email" id ="email" />
                </td>
                <td>כתובת דוא"ל</td>
            </tr>
            <tr>
                <td>OUTPUT</td>
                <td>
                    <input type ="radio" name="gender" value ="male" /> זכר
                    <input type ="radio" name="gender" value ="male" checked/> נקבה
                </td>
                <td>מין</td>
            </tr>
            <tr>
                <td>OUTPUT</td>
                <td>INPUT</td>
                <td>שנת לידה</td>
            </tr>
            <tr>
                <td>OUTPUT</td>
                <td>INPUT</td>
                <td>ישוב מגורים</td>
            </tr>
            <tr>
                    <tr>
                <td>OUTPUT</td>                
                <td>INPUT</td>
                <td>טלפון</td>
            </tr>
            <tr>
                    <tr>
                 <td>
                     <input type ="text" id ="mHobies" size ="30" 
                         style ="display: none; background-color:silver; font-weight: bold;"
                         disabled ="disabled" />
                 </td>
                <td>
                    <input type ="checkbox" name ="hobies" value =" football" /> כדורגל &nbsp;&nbsp;&nbsp;
                    <input type ="checkbox" name ="hobies" value =" Tennis" /> טניס &nbsp;&nbsp;&nbsp;
                    <input type ="checkbox" name ="hobies" value =" compGame" /> משחקי מחשב &nbsp;&nbsp;&nbsp;
                    <input type ="checkbox" name ="hobies" value =" dancing" /> ריקוד &nbsp;&nbsp;&nbsp;
                    <input type ="checkbox" name ="hobies" value =" other" /> אחר &nbsp;&nbsp;&nbsp;
                </td>
                <td>תחביבים</td>
            </tr>
            <tr>
                    <tr>
                <td>OUTPUT</td>
                <td>INPUT + red label</td>
                <td>סיסמה</td>
            </tr>
            <tr>
                    <tr>
                <td>OUTPUT </td>
                <td>INPUT</td>
                <td>בדיקת סיסמה</td>
            </tr>
            <tr>
                <td> </td>
            </tr>
            <tr>
                <td><br /><td>
                    <td colspan ="2" style ="text-align:center;">
                        <input type ="submit" name="submit" value ="שלח" />
                        <input type ="reset" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
