using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TomersWesite;

namespace TomersWesite
{
    public partial class DeleteRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fileName = "userDB.mdf";
            if (Session["admin"].ToString() == "yes")
            {
                string uName = Request.QueryString["uName"].ToString();
                string sqlDelete = "DELETE FROM usersTbl WHERE uName = '" + uName + "'";
                Helper.DoQuery(sqlDelete);
            }
            Response.Redirect("DeleteUser.aspx");
        }
    }
}