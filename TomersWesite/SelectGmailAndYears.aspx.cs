using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TomersWesite
{
    public partial class SelectGmailAndYears : System.Web.UI.Page
    {
        public string st = "", msg = "", sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["admin"].ToString() == "no")
            //{
            //    msg += "<div style ='text-align: center; color; red'>";
            //    msg += "<h3>אינך מנהל!אין לך הרשאה לצפות בדף זה</h3>";
            //    msg += "<a href ='Main.html'>[המשך]</a>";
            //    msg += "</div>";
            //}
            //else
            //{
                string tableName = "usersTbl";

                sqlSelect = $"select * from {tableName}";
                sqlSelect += "where email like '%gmail% and city in(N'מטולה,N הרציה,Nמרכז')";
                DataTable table = Helper.ExecuteDataTable(sqlSelect);

                int length = table.Rows.Count;
                if (length == 0)
                    msg = "הטבלה ריקה. לא נרשמו משתמשים";
                else
                {
                    //---  שורת כותרת הטבלה ---
                    st += "<tr>";
                    st += "<th>שם משתמש</th>";
                    st += "<th>שם פרטי</th>";
                    st += "<th>שם משפחה</th>";
                    st += "<th>דוא'ל</th>";
                    st += "<th>שנת לידה</th>";
                    st += "<th>מגדר</th>";
                    st += "<th>מס טלפון</th>";
                    st += "<th>עיר</th>";
                    st += "<th>מחשבים</th>";
                    st += "<th>כדורגל</th>";
                    st += "<th>מוסיקה</th>";
                    st += "<th>טלוויזיה</th>";
                    st += "<th>סוסים</th>";
                    st += "<th>סיסמה</th>";

                    st += "</tr>";

                    //--- כל הרשומות מהטבלה הוירטואלית ---
                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += $"<td>{table.Rows[i]["uName"]}</td>";
                        st += $"<td class='right'>{table.Rows[i]["fName"]}</td>";
                        st += $"<td class='right'>{table.Rows[i]["lName"]}</td>";
                        st += $"<td class='left'>{table.Rows[i]["email"]}</td>";
                        st += $"<td>{table.Rows[i]["yearborn"]} </td>";
                        st += $"<td>{table.Rows[i]["gender"]} </td>";
                        st += $"<td>{table.Rows[i]["prefix"]}--{table.Rows[i]["phone"]} </td>";
                        st += $"<td class='right'>{table.Rows[i]["City"]}</td>";
                        st += $"<td>{table.Rows[i]["hob1"]} </td>";
                        st += $"<td>{table.Rows[i]["hob2"]} </td>";
                        st += $"<td>{table.Rows[i]["hob3"]} </td>";
                        st += $"<td>{table.Rows[i]["hob4"]} </td>";
                        st += $"<td>{table.Rows[i]["hob5"]} </td>";
                        st += $"<td>{table.Rows[i]["pw"]} </td>";
                        st += "</tr>";
                    }

                    msg = $"נמצאו  {length} משתמשים";
                //}
            }
        }
    }

}