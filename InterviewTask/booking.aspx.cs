using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterviewTask
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Calendar1.SelectedDate>Calendar1.TodaysDate)
            {
                Label5.Text = TextBox1.Text + "<br>" + TextBox2.Text + "<br>" + TextBox3.Text + "<br>Tickets Booked for" + Calendar1.SelectedDate.ToShortDateString();

            }
            else
            {
                Label5.Text = "Sorry ticket not available";
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBox4.Text = Calendar1.SelectedDate.ToLongDateString();

        }

      
    }
}