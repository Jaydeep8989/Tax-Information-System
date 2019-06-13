using System;
using System.Data.SqlClient;
using System.Data;

namespace TaxInfo
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmailID"] != null)
            {
                Response.Redirect("property.aspx");
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd;
            SqlConnection cnn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=information;Integrated Security=True");
            cnn.Open();

            String sql = "SELECT EmailID,Password FROM login WHERE EmailID='" + txtemail.Text + "' AND Password='" + txtpass.Text + "'";
            cmd = new SqlCommand(sql, cnn);
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (txtemail.Text.Equals("") || txtpass.Text.Equals(""))
            {
                Label1.Text = "Information must Required!!";
            }

            else if (dt.Rows.Count > 0)
            {
                Session["EmailID"] = txtemail.Text.Trim();
                Response.Redirect("property.aspx");
            }
            else
            {
                Label1.Text = "Invalid Username or Password!!";
            }
            cnn.Close();
        }
    }
}