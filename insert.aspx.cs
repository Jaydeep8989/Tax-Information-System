using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxInfo
{
    public partial class insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmailID"] == null)
            {
                Response.Redirect("login.aspx");
            }

        }
        protected void TextBox1_Load(object sender, EventArgs e)
        {

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
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;
            SqlConnection cnn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=information;Integrated Security=True");
            cnn.Open();
            if (txtid.Text.Equals("") || pname.Text.Equals("") || address.Text.Equals("") || amount.Text.Equals("") || percentage.Text.Equals("") || tex.Text.Equals(""))
            {
                lbl1.Text = "Information must Required!!";
            }
            else
            {
                String sql = "Insert into taxinfo(id,por_name,deed,amount_deed,percentage,total) values(" + txtid.Text + ",'" + pname.Text + "','" + address.Text + "'," + amount.Text + "," + percentage.Text + ","+ tex.Text +")";
                cmd = new SqlCommand(sql, cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
                address.Text = string.Empty;
                amount.Text = string.Empty;
                pname.Text = string.Empty;
                txtid.Text = string.Empty;
                percentage.Text = string.Empty;
                tex.Text = string.Empty;
                lbl1.Text = "Add Successfully!!";
            }
        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("property.aspx");
        }

       
    }
}
