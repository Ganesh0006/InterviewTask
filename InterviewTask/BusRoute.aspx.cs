using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace InterviewTask
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["taskConnectionString8"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

        public void DataLoad()
        {
            //if(page.IsPostBack)
            //{
            //    GridView1.DataBind();
            //}
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtDOJ_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtno.Text = GridView1.SelectedRow.Cells[1].Text;
            ddlfrom.Text = GridView1.SelectedRow.Cells[2].Text;
            ddlto.Text = GridView1.SelectedRow.Cells[3].Text;
            dojtxt.Text = GridView1.SelectedRow.Cells[4].Text;
            txtprice.Text = GridView1.SelectedRow.Cells[5].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(txtno.Text!="" && dojtxt.Text!="" && chkBoxAgree.Checked)
            {
                using(con=new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("insert into travels(busno,Arravial,droping,doj,price)values(@busno,@Arravial,@droping,@doj,@price)",con);
                    cmd.Parameters.AddWithValue("@busno", txtno.Text);
                    cmd.Parameters.AddWithValue("@Arravial",ddlfrom.SelectedValue);
                    cmd.Parameters.AddWithValue("@droping",ddlto.SelectedValue);
                    cmd.Parameters.AddWithValue("@doj", dojtxt.Text);
                    cmd.Parameters.AddWithValue("@doj", dojtxt.Text);
                  //  cmd.Parameters.AddWithValue("@price",int.Parse(txtprice.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();

                }
            }
            else
            {

            }
        }
    }
}