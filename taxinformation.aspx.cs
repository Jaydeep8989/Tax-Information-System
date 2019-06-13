using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxInfo
{
    public partial class taxinformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmailID"] == null)
            {
                Response.Redirect("login.aspx");
            }
            SqlConnection cnn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=information;Integrated Security=True");
            cnn.Open();
            SqlCommand cmd1 = new SqlCommand("SELECT SUM(total) FROM taxinfo", cnn);
            cmd1.ExecuteNonQuery();
            Label1.Text = "Total Tax In Amount :  " + cmd1.ExecuteScalar().ToString();
            cnn.Close();
            Label3.ForeColor = System.Drawing.Color.Black;
            Label3.Text = "id :";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("property.aspx");
        }



        

        protected void Button3_Click1(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "")
            {
                Label2.Text = "Please Enter Medicine name!!";
            }
            else
            {
                SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=information;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT por_name,deed,amount_deed,percentage,total FROM taxinfo WHERE id = '" + DropDownList1.Text + "'", con);
                cmd.Parameters.AddWithValue("id", DropDownList1.Text);
                SqlDataReader sdr;
                sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    TextBox5.Text = sdr.GetString(0);
                    TextBox2.Text = sdr.GetString(1);
                    TextBox3.Text = sdr.GetValue(2).ToString();
                    TextBox4.Text = sdr.GetValue(3).ToString();
                    TextBox1.Text = sdr.GetValue(4).ToString();
                }
                con.Close();
            }
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            Response.Redirect("property.aspx");
        }
    }
}