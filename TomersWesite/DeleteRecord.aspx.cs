using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TomersWesite
{
    public partial class DeleteRecord : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"].ToString() == "no")
            {
                msg += "<div style ='text-align: center; color; red'>";
                msg += "<h3>אינך מנהל!אין לך הרשאה לצפות בדף זה</h3>";
                msg += "<a href ='Main.aspx'>[המשך]</a>";
                msg += "</div>";
            }
            else
            {
                string fileName = "usersDB.mdf";
                string uName = Request.QueryString["uName"].ToString();

                string sqlDelete = "DELETE FROM usersTbl WHERE uName '" + uName + "'";

                Helper.DoQuery(sqlDelete);
                Response.Redirect("DeleteUser.aspx");
            }
        }
    }
}