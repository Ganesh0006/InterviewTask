using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient; 

namespace InterviewTask
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

        public void DataLoad()
        {
            GridView1.DataBind();
        }

        public void ClearAllData()
        {
            ddlfrom.SelectedValue = ddlfrom.Items[0].ToString();
            ddlto.SelectedValue = ddlfrom.Items[0].ToString();
            txtDOJ.Text = DateTime.Today.Date.ToString();
            chkBoxAgree.Checked = false;
            IblMessage.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
    
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            IblSID.Text = GridView1.SelectedRow.Cells[1].Text;
            ddlfrom.Text = GridView1.SelectedRow.Cells[2].Text;
            ddlto.Text = GridView1.SelectedRow.Cells[3].Text;
            txtDOJ.Text = GridView1.SelectedRow.Cells[4].Text;
           
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
           if(ddlfrom.Text!="" && ddlto.Text!="" && chkBoxAgree.Checked)
            {
                using(con=new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert into Tables(fromname,toname,journeyDate)values(@fromname,@toname,@journeyDate",con);
                    cmd.Parameters.AddWithValue("@fromname", ddlfrom.SelectedValue);
                    cmd.Parameters.AddWithValue("@toname", ddlfrom.SelectedValue);
                    cmd.Parameters.AddWithValue("@journeyDate",txtDOJ.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();



                }
            }
           else
            {
                IblMessage.Text = "Fill All Information";
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {

        }
    }
}