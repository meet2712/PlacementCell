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
    public partial class StudentRegistrationForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\company.mdf; Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into student_info (enrollment_number,firstname,lastname,mail,pnumber,semester,branch,userid,password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox7.Text + "','" + TextBox8.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}