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
        public string loginMsg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            loginMsg += $"<h3>שלום{Session["uFName"].ToString()} </h3>";
            if (Session["Admin"].ToString() == "yes")
            {
                loginMsg += "<a href ='ShowTable.aspx'>הצגת טבלה</a><br />";
                loginMsg += "<a href ='Logout.aspx'>התנתק</a><br />";
            }
            else if (Session["uName"].ToString() == "אורח")
            {   
                loginMsg += "<a href ='SignUp.aspx'>רישום</a><br />";
                loginMsg += "<a href ='Login.aspx'>התחבר</a><br />";
            }
            else
            {
                loginMsg += "<a href ='Logout.aspx'>התנתק</a><br />";
            }
        }
    }
}