using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Asp.net_JqueryAjaxMethod
{
   
    public class classfile
    {
        string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
        SqlConnection con;
        public void openconection()
        {
            con = new SqlConnection(constr);
            con.Open();
            
        }

        public void closeconnection()
        {
            con.Close();
        }

        public void commandexc(string Query)
        {
            
            SqlCommand cmd = new SqlCommand(Query,con);
            cmd.ExecuteNonQuery();

        }





    }
}