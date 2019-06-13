using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxInfo
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmailID"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
        protected void amount_TextChanged(object sender, EventArgs e)
        {
            if ((!string.IsNullOrEmpty(amount.Text)) && (!string.IsNullOrEmpty(percentage.Text)))
            {
                int a = 100;
                tex.Text = (Convert.ToDouble(amount.Text) * Convert.ToDouble(percentage.Text) / a).ToString();
            }
        }

        protected void percentage_TextChanged(object sender, EventArgs e)
        {
            if ((!string.IsNullOrEmpty(amount.Text)) && (!string.IsNullOrEmpty(percentage.Text)))
            {
                var a = 100;
                tex.Text = (Convert.ToDouble(amount.Text) * Convert.ToDouble(percentage.Text) / a).ToString();
            }
        }
        protected void btn_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cnn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=information;Integrated Security=True");
            cnn.Open();
            SqlCommand cmd = new SqlCommand("Update taxinfo set  por_name = '" + pname.Text + "', deed = '" + address.Text + "',amount_deed='" + amount.Text + "',percentage='" + percentage.Text + "',total='" + tex.Text + "' where id='" + txtid.Text + "'", cnn);
            cmd.ExecuteNonQuery();
            cnn.Close();
        }

        

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("property.aspx");
        }
    }
}