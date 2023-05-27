<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="TomersWesite.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table {
            border: 1px solid red;
            margin: auto;
            border-collapse: collapse
        }

        td, th {
            border: 1px solid navy;
        }
    </style>
    <script src="Scripts/CheckMyForm.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server" onsubmit="return chkForm();">

       <table>
            <tr>
                <th></th>
                <th>טופס רישום</th>
                <th></th>
            </tr>
            <tr>
                <td>שם משתמש</td>
                <td>
                    <input type="text" id="uName" name="uName" />
                </td>
                <td>
                    <input type="text" id="mUName" size="50"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />

                </td>
            </tr>
            <tr>
                <td>שם פרטי</td>
                <td>
                    <input type="text" name="fName" id="fName" />
                </td>
                <td>
                    <input type="text" id="mFName" size="50"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />

                </td>
            </tr>
            <tr>
                <td>שם משפחה</td>
                <td>
                    <input type="text" name="lName" id="lName" />
                </td>
                <td>
                    <input type="text" id="mLName" size="50"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />

                </td>
            </tr>
            <tr>
                <td>כתובת דוא"ל</td>
                <td>
                    <input type="email" name="email" id="email" />
                </td>
                <td>
                    <input type="text" id="mEmail" size="50"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />

                </td>
            </tr>
            <tr>
                <td>מין</td>
                <td>
                    <input type="radio" name="gender" value="male" />זכר
                    <input type="radio" name="gender" value="female" checked />נקבה
                </td>
                <td></td>
            </tr>
            <tr>
                <td>שנת לידה</td>
                <td>
                    <input type="text" name="yearBorn" id="yearBorn" /></td>
                <td>
                    <input type="text" id="mYearBorn" size="50"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>ישוב מגורים</td>
                <td>
                    <select name="city" id="city">
                        <option value="other" selected>בחר ישוב מגורים</option>
                        <option value="חיפה">חיפה</option>
                        <option value="תל-אביב">תל-אביב</option>
                        <option value="ירושלים">ירושלים</option>
                        <option value="מודיעין">מודיעין</option>
                        <option value="באר-שבע">באר-שבע</option>
                        <option value="מטולה">מטולה</option>
                        <option value="הרצליה">הרצליה</option>
                        <option value="צפון">צפון</option>
                        <option value="מרכז">מרכז</option>
                        <option value="דרום">דרום</option>
                    </select>
                </td>
                <td>
                    <input type="text" id="mCity" size="50"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>מס' טלפון</td>
                <td style="direction: ltr; text-align: right;"><span style="color: red;">7 ספרות *</span>
                    <select name="prefix" id="prefix"><%=prfx %></select><input type="text" name="phoneNum" id="phoneNum" />
                </td>
                <td>
                    <input type="text" id="mPhone" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>תחביבים</td>
                <td>
                    <input type="checkbox" name="hobies" value="1" />כדורגל&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="2" />טניס&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="3" />משחקי מחשב&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="4" />ריקוד&nbsp;&nbsp;&nbsp;
                    <input type="checkbox" name="hobies" value="5" />אחר&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <input type="text" id="mHobies" size="30"
                        style="display: none; background-color: silver; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>סיסמא</td>
                <td>
                    <input type="password" name="pw" id="pw" size="10"
                        maxlength="10"/>
                    <span style="color: red;">*6-10 תווים</span>
                </td>
                <td>
                    <input type="text" id="mPw" size="30"
                        style="display: none; background-color: silver; color: red; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>בדיקת סיסמא</td>
                <td>
                    <input type="password" name="pw1" id="pw1" size="10"
                        maxlength="10" />
                </td>
                <td>
                    <input type="text" id="mPw1" size="30"
                        style="display: none; background-color: silver; color: red; font-weight: bold;"
                        disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" name="submit" value="שלח" />
                    <input type="reset" />
                </td>
            </tr>
        </table>
    </form>
    <br />

    <h3 style="direction: ltr"><%= sqlMsg %></h3>

    <table style="margin: 0 auto; direction: ltr;" border="1">
       <%-- <%= st %>--%>
    </table>

    <h2><%=msg%></h2>

</asp:Content>