using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace PlacementCellP
{
    public partial class company : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\company.mdf; Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           
                if (!IsPostBack)
                {
                    if (Session["Username"] == null && Session["Uid"] == null)
                    {
                        Response.Redirect("login.aspx");
                    }
                    else
                    {
                        
                    }
                }
            

        }

    
            protected void btn_update_Click(object sender, EventArgs e)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update Table1 set company_name=('" + TextBox1.Text + "'), website=('" + TextBox2.Text + "'), date=('" + TextBox3.Text + "'), month=('" + TextBox8.Text + "'), year=('" + TextBox9.Text + "'), location=('" + TextBox4.Text + "'), eligibility=('" + TextBox5.Text + "'), job_roles=('" + TextBox6.Text + "'), vacancy=('" + TextBox7.Text + "') where Id=('" + TextBox10.Text + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();

            }

        protected void btn_delete_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from Table1 where Id=('" + TextBox10.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Table1 (company_name,website,date,month,year,location,eligibility,job_roles,vacancy) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "select * from Table1 where Id=('" + TextBox10.Text + "')";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "new_table");
            DataTable dt = ds.Tables[0];
            con.Close();
            TextBox10.Text = dt.Rows[0]["Id"].ToString();
            TextBox1.Text = dt.Rows[0]["company_name"].ToString();
            TextBox2.Text = dt.Rows[0]["website"].ToString();
            TextBox3.Text = dt.Rows[0]["date"].ToString();
            TextBox8.Text = dt.Rows[0]["month"].ToString();
            TextBox9.Text = dt.Rows[0]["year"].ToString();
            TextBox4.Text = dt.Rows[0]["location"].ToString();
            TextBox5.Text = dt.Rows[0]["eligibility"].ToString();
            TextBox6.Text = dt.Rows[0]["job_roles"].ToString();
            TextBox7.Text = dt.Rows[0]["vacancy"].ToString();
           
        }

        protected void Button5_Click(object sender, EventArgs e)
        {   //connnected enviorment
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Table1", con);
            SqlDataReader dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //Disconnected environment
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from Table1", con);
            DataSet ds = new DataSet();
            da.Fill(ds, "Table1");
            con.Close();
            GridView2.DataSource = ds.Tables["Table1"];
            GridView2.DataBind();
        }
    }
}