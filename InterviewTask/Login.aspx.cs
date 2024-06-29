using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace InterviewTask
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Registerlogin.mdf");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string check = "select count(*)from[Table]where Email_Id='"+usertxt.Text+"' and password='"+passtxt.Text+"'  ";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if(temp == 1)
            {
                Response.Redirect("booking.aspx");

            }
            else

            {
                Label3.ForeColor = System.Drawing.Color.Red;
                 
                Label3.Text = "Your Email ID or Password is Invalid ";
            }

        }
    }
}