using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TomersWesite
{
    public partial class AdminPage : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"].ToString() == "no")
            {
                msg += "<div style = 'text-align: center; color red'>";
                msg += "<h3> אינך מנהל! אין לך הרשאה לצפות בדף זה</h3>";
                msg += "<a href = 'Main.html>[המשך]</a>'";
                msg += "</div>";
            }
            else
            {
                msg += "<h3><a href> = 'Showtable.aspx'<הצגת טבלת משתמשים</a></h3>";
                msg += "br /><br />";
                msg += "<h3><a href = 'SelectByName'כל המשתמשים שהשם הפרטי שלהם מתחיל ב -א</a></h3>";
                msg += "<h3><a href = 'SelectGmailAndYears'כל המשתמשים שגרים בחיפה,מודיעים, תל אביב</a></h3>";

            }
        }
    }
}