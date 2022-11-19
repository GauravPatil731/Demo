using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Asp.net_JqueryAjaxMethod
{
    public partial class Crud : System.Web.UI.Page
    {
       
        //classfile con = new classfile();
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
            
        }

        [WebMethod]
        public static string Crudinsert(string name, string address, string Mobile, string pincode)
        {
            string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con =new SqlConnection(constr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into TblEemployee (Name,Address,MobileNo,Pincode) values('"+name+"','"+address+"','"+Mobile+"','"+pincode+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();

            return "Data Save";
        }
    }
}