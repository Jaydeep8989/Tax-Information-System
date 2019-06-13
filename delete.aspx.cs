using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxInfo
{
    public partial class delete : System.Web.UI.Page
    {
        public object Sqlcom { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmailID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("property.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=information;Integrated Security=True");
            cnn.Open();
            SqlCommand cmd = new SqlCommand("Delete from taxinfo Where id = '" + id.Text + "'", cnn);
            cmd.ExecuteNonQuery();
            cnn.Close();
        }
    }
}