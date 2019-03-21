using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlacementCellP
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if((TextBox1.Text=="admin") && (TextBox2.Text=="admin"))
            {
                Session["Username"] = TextBox1.Text;
                Session["Uid"] = TextBox2.Text;
                Response.Redirect("company.aspx");
            }
            else
            {

                Response.Redirect("login.aspx");
                
            }
            

        }
    }
  
}