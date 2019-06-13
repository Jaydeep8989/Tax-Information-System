using System;

namespace TaxInfo
{
    public partial class property : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmailID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("insert.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("delete.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("update.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("taxinformation.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }
    }
}