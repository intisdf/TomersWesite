
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Configuration;
using Microsoft.Win32;
/// <summary>
/// Summary description for Helper
/// </summary>
/// 

namespace TomersWesite
{
    public class Helper
    {


        public static SqlConnection ConnectToDb()
        {
            string path;
            if (IsSql15())
                path = HttpContext.Current.Server.MapPath("App_Data/usersDB.mdf");
            else
                path = HttpContext.Current.Server.MapPath("App_Data/usersDBold.mdf");

            string connString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + path + ";Integrated Security=True;Connect Timeout=30";

            SqlConnection conn = new SqlConnection(connString);
            return conn;
        }


        public static string Getconnectionstring()
        {
            return ConfigurationManager.ConnectionStrings["webConfigConnecionString"].ConnectionString;
        }

        public static void DoQuery(string sql)
        {
            SqlConnection conn = ConnectToDb();
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            com.ExecuteNonQuery();
            conn.Close();
        }



        public static bool IsExist(string sql)
        {

            SqlConnection conn = ConnectToDb();
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            SqlDataReader data = com.ExecuteReader();

            bool found = Convert.ToBoolean(data.Read());
            conn.Close();
            return found;

        }

        public static DataTable ExecuteDataTable(string sql)
        {
            SqlConnection conn = ConnectToDb();
            conn.Open();

            DataTable dt = new DataTable();

            SqlDataAdapter tableAdapter = new SqlDataAdapter(sql, conn);

            tableAdapter.Fill(dt);


            return dt;
        }

        /// <summary>
        /// check if we got SQL local db 15 with comes with VS2022
        /// </summary>
        /// <returns></returns>
        public static bool IsSql15()
        {
            RegistryKey key = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Microsoft\Microsoft SQL Server\MSSQL15E.LOCALDB\MSSQLServer\CurrentVersion", true);
            return (key != null);
        }
    }
}



