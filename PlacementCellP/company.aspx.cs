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

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Table values()",con);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}