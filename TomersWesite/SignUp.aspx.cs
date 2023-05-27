using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TomersWesite;

namespace TomersWesite
{
    public partial class SignUp : System.Web.UI.Page
    {
        public string st = "";
        public string prfx = $"<option value = 'choose'>בחר</option>";
        public string msg = "";
        public string sqlMsg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 50; i < 60; i++)
            {
                prfx += $"<option value ='0{i}'>0{i}</option>";
            }
            if (Request.Form["submit"] != null)
            {
                // ---שליפת המידע שהגיע מהטופס לתוך משתנים---
                string uName = Request.Form["uName"];
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string email = Request.Form["email"];
                string gender = Request.Form["gender"];
                string hobies = Request.Form["hobies"].ToString();
                string prefix = Request.Form["prefix"];
                string phone = Request.Form["phoneNum"];
                string city = Request.Form["city"];
                string yearBorn = Request.Form["yearBorn"];
                int yBorn = int.Parse(yearBorn);
                string pw = Request.Form["pw"];


                char hob1 = 'F';
                char hob2 = 'F';
                char hob3 = 'F';
                char hob4 = 'F';
                char hob5 = 'F';

                //--- בדיקה: האם מחרוזת התחביבים מכילה את הערכים 1 - 5 ---
                if (hobies.Contains('1')) hob1 = 'T';
                if (hobies.Contains('2')) hob2 = 'T';
                if (hobies.Contains('3')) hob3 = 'T';
                if (hobies.Contains('4')) hob4 = 'T';
                if (hobies.Contains('5')) hob5 = 'T';
                st = "<table border='1' dir='ltr'>";

                st += "<tr><th colspan='2'>הפרטים שהתקבלו מהשרת</th></tr>";
                st += "<tr><td>user name:</td><td>" + uName + "</td></tr>";
                st += $"<tr><td>first name:</td><td>{fName}</td></tr>";
                st += $"<tr><td>last name:</td><td>{lName}</td></tr>";
                st += $"<tr><td>email:</td><td>{email}</td></tr>";
                st += $"<tr><td>hobies:</td><td>{hobies}</td></tr>";
                st += $"<tr><td>phone:</td><td>{prefix + phone}</td></tr>";
                st += $"<tr><td>city:</td><td>{city}</td></tr>";
                st += $"<tr><td>yearBorn:</td><td>{yBorn}</td></tr>";
                st += $"<tr><td>password:</td><td>{pw}</td></tr>";
                if (gender == "male")
                {
                    st += $"<tr><td colspan='2'>{uName} הוא בן </td></tr>";
                }
                else
                    st += $"<tr><td colspan='2'>{uName} היא בת </td></tr>";
                st += "</table>";
                string tableName = "usersTbl";

                //--- בדיקה האם שם המשתמש תפוס ---
                string sqlSelect = $"select * from {tableName} where uName = '{uName}'";
                if (Helper.IsExist(sqlSelect))
                {
                    msg = "שם המשתמש תפוס, נסה שוב עם שם אחר";
                    sqlMsg = sqlSelect;
                }
                else
                {
                    string sqlInsert = $"insert into {tableName} ";
                    sqlInsert += $"values ('{uName}', N'{fName}', N'{lName}', '{email}', ";
                    sqlInsert += $"'{gender}', N'{city}', {yBorn}, '{prefix}', '{phone}',  ";
                    sqlInsert += $"'{hob1}', '{hob2}', '{hob3}', '{hob4}', '{hob5}', ";
                    sqlInsert += $"'{pw}')";
                    sqlMsg = sqlInsert;

                    Helper.DoQuery(sqlInsert);
                    msg = "הרשומה נוספה בהצלחה";
                }
            }
        }

    }
}