using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TomersWesite
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string fileName = "";
                string tableName = "ManagerTbl";
                string sqlLogin;
                string msg = "";
                string mName = Request.Form["mName"];
                string mPw = Request.Form["mPw"];
                sqlLogin = $"select * from {tableName} where mName = '{mName}' and mPw = '{mPw}'";
                DataTable table = Helper.ExecuteDataTable(sqlLogin);
                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg += "<div style = 'text-align: center; color: red;'>";
                    msg += "<h3>אינך מנהל! אין לך הרשאה לצפות בדף זה</h3>";
                    msg += "<a href.'Main.html'>[ המשך ]</a>";
                    msg += "</div>";
                }
                else
                {
                    Session["admin"] = "yes";
                    Session["uFName"] = "מנהל";
                    Response.Redirect("Main.html");
                }
            }
        }
    }
}