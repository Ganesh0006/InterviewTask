using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace InterviewTask
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

         public void DataLoad()
        {
            if(Page.IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        public void clearAlldata()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            ddlfrom.SelectedValue = ddlfrom.Items[0].ToString();
            ddlto.SelectedValue = ddlfrom.Items[0].ToString();
            txtDOJ.Text = DateTime.Today.Date.ToString();
            chkBoxAgree.Checked = false;
            IblMessage.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            IblSID.Text = GridView1.SelectedRow.Cells[1].Text;
            txtName.Text = GridView1.SelectedRow.Cells[2].Text;
            txtEmail.Text = GridView1.SelectedRow.Cells[3].Text;
            ddlfrom.Text = GridView1.SelectedRow.Cells[4].Text;
            ddlto.Text = GridView1.SelectedRow.Cells[5].Text;
            txtDOJ.Text = GridView1.SelectedRow.Cells[6].Text;

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(txtName.Text!="" && txtEmail.Text!="" )
            {
                using(con=new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert into students(Name,Email,pickup,designation,JourneyDate)values(@name,@Email,@pickup,@designation,@JourneyDate)",con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@pickup", ddlfrom.SelectedValue);
                    cmd.Parameters.AddWithValue("@designation", ddlto.SelectedValue);
                    cmd.Parameters.AddWithValue("@JourneyDate", txtDOJ.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();

                    clearAlldata();

                }
            }
            else
            {
                IblMessage.Text = "Fill all the information";
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {


            if (txtName.Text != "" && txtEmail.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update students set Name=@name,Email=@email,PickUp=@pickup,Designation=@designation,journeydate=@JourneyDate where BusId=" + IblSID.Text, con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    cmd.Parameters.AddWithValue("@pickup", ddlfrom.SelectedValue);
                    cmd.Parameters.AddWithValue("@designation", ddlto.SelectedValue);
                    cmd.Parameters.AddWithValue("@JourneyDate", txtDOJ.Text);
                    //cmd.Parameters.AddWithValue("@JourneyDate", IblSID.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();

                    clearAlldata();

                }
            }
            else
            {
                IblMessage.Text = "Fill all the information";
            }


        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            using(con=new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Delete from students where busid =@BusID",con);
                cmd.Parameters.AddWithValue("@BusId", IblSID.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                clearAlldata();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            clearAlldata(); 
        }
    }
}