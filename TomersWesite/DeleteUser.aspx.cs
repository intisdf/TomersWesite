using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TomersWesite;

namespace TomersWesite
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        public string st = "", msg = "";
        public string sqlSelect = "";
        public string userToDelete = "";

        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["admin"].ToString() == "no")
            {
                msg += "<div style='text-align: center; color: red;'>";
                msg += "<h3> אינך מנהל ! אין לך אפשרות לצפות בדף זה</h3>";
                msg += "<a href='Login.aspx'>[ המשך ]</a>";
            }

            else
            {
                string tableName = "usersTbl";

                sqlSelect = $"select * from {tableName}";

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
                    st += "<th>מס' טלפון</th>";
                    st += "<th>עיר</th>";
                    st += "<th>כדורגל</th>";
                    st += "<th>מחשבים</th>";
                    st += "<th>מוסיקה</th>";
                    st += "<th>טלוויזיה</th>";
                    st += "<th>סוסים</th>";
                    st += "<th>סיסמא</th>";
                    st += "</tr>";

                    //--- כל הרשומות מהטבלה הוירטואלית ---
                    for (int i = 0; i < length; i++)
                    {
                        st += "<tr>";
                        st += $"<td>{table.Rows[i]["uName"]}</td>";
                        st += $"<td class='right'>{table.Rows[i]["fName"]}</td>";
                        st += $"<td class='right'>{table.Rows[i]["lName"]}</td>";
                        st += $"<td class='left'>{table.Rows[i]["email"]}</td>";
                        st += $"<td>{table.Rows[i]["yearBorn"]}</td>";
                        st += $"<td>{table.Rows[i]["gender"]}</td>";
                        st += $"<td class='right'>{table.Rows[i]["prefix"]} - {table.Rows[i]["phone"]}</td>";
                        st += $"<td class='right'>{table.Rows[i]["city"]}</td>";
                        st += $"<td>{table.Rows[i]["hob1"]}</td>";
                        st += $"<td>{table.Rows[i]["hob2"]}</td>";
                        st += $"<td>{table.Rows[i]["hob3"]}</td>";
                        st += $"<td>{table.Rows[i]["hob4"]}</td>";
                        st += $"<td>{table.Rows[i]["hob5"]}</td>";
                        st += $"<td>{table.Rows[i]["pw"]}</td>";
                        userToDelete = table.Rows[i]["uName"].ToString();
                        st += "<td style = 'text - align: center; border: 1px solid black;'>";
                        st += $"<a href = 'DeleteRecord.aspx?uName={userToDelete}'>[מחק]</a>";
                        st += "</td></tr>";
                    }

                    msg = $"נמצאו  {length} משתמשים";
                }
            }
        }
    }
}