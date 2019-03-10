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

        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {

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
    }
}