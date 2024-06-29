using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml.Linq;
using System.Web.Security;
using System.Data;

namespace InterviewTask
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection("server=DESKTOP-DIA79MH;Database=task;uid=sa;pwd=sql;") ;
            SqlCommand cmd = new SqlCommand("Select * from admin where username=@username and password=@password",con);
            cmd.Parameters.AddWithValue("@username",txtUser.Text);
            cmd.Parameters.AddWithValue("@password", txtPass.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds,"admin");

            if(ds.Tables["admin"].Rows.Count==0)
            {
                Response.Write("Invalid User");
            }
            else
            {
                Response.Redirect("RouteInformation.aspx");
            }

        }
    }
}