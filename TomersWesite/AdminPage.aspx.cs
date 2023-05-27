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
            if (Session["admin"].ToString() == "no")
            {
                msg += "<div style= 'text align: center; color; red;'>";
                msg += "<h3>אינך מנהל! אין לך הרשאה לגשת לעמוד זה </h3>";
                msg += "<a href = 'Login.aspx' >[ המשך ]</a>";
                msg += "</div>";
            }
            else
            {
                msg += "<h3><a href ='ShowTable.aspx'> הצגת טבלת משתמשים</a></h3>";
                msg += "<br/>";
                msg += "<h3><a href = 'SelectByName.aspx'>כל המשתמשים שהשם הפרטי שלהם מתחיל ב- א</a></h3>";
                msg += "<h3><a href = 'SelectGmailAndYears.aspx'>ב- חיפה, מודיעין או תל-אביב gmail כל המשתמשים בכתובת<a></h3>";
            }

        }
    }
}