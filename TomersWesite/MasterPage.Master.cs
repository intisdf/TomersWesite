using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TomersWesite
{

    public partial class MasterPage : System.Web.UI.MasterPage
    {
        public string loginMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            //--- מחרוזת כניסה למשתמש
            loginMsg += $"<h3>שלום {Session["uFName"].ToString()} </h3>";
            //--- בניית התפריט האישי לאורח/משתמש/מנהל ---
            if (Session["admin"].ToString() == "yes")
            {
                loginMsg += "<a href='Logout.aspx' class='btn btn-outline-secondary btn-sm btn-side p-0'>התנתק</a><br />";
                loginMsg += "<a href='DeleteUser.aspx' class='btn btn-outline-secondary btn-sm btn-side p-0'>מחיקת משתמש</a><br />";
                loginMsg += "<a href='ComplexQuery.aspx' class='btn btn-outline-secondary btn-sm btn-side p-0'>שאילתה דינאמית מורכבת</a><br />";
                loginMsg += "<a href='ShowTable.aspx' class='btn btn-outline-secondary btn-sm btn-side p-0'>הצגת טבלה</a><br />";
                loginMsg += "<a href='AdminPage.aspx' class='btn btn-outline-secondary btn-sm btn-side p-0'>    ניהול    </a><br />";
                loginMsg += "<a href='SelectByNBame.aspx' class='btn btn-outline-secondary btn-sm btn-side p-0'>הצגת משתמשים בשם א<a><br />";
                loginMsg += "<a href='SelectGmailAndYears.aspx' class='btn btn-outline-secondary btn-sm btn-side p-0'>משתמשי ג'ימייל</a>";
            }
            else if (Session["uName"].ToString() == "אורח")
            {
                loginMsg += "<a href='Login.aspx' class='btn btn-outline-primary btn-lg btn-side'>התחבר</a><br />";
                loginMsg += "<a href='Signup.aspx' class='btn btn-outline-secondary btn-lg btn-side'>רישום</a><br />";
            }
            else  // authenticated user
            {
                loginMsg += "<a href='Logout.aspx' class='btn btn-outline-primary btn-sm btn-side'>התנתק</a><br />";
                loginMsg += "<a href='UpdateUser.aspx'  class='btn btn-outline-secondary btn-sm btn-side'>עדכון פרטים</a><br />";
                loginMsg += "<a href='LoginAdmin.aspx' class='btn btn-outline-secondary btn-sm btn-side'>התחברות מנהל</a><br />";

            }
        }
    }
}