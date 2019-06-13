using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TaxInfo
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(txtuname.Text.Equals("") || txtpass.Text.Equals("") || txtrepass.Text.Equals("") || txtemail.Text.Equals(""))
            {
                lab1.Text = "Information must Required!!";
            }
            else if (txtpass.Text == txtrepass.Text)
            {
                SqlCommand cmd;
                SqlConnection cnn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=information;Integrated Security=True");
                cnn.Open();
                String sql = "Insert into login(Username,Password,Repassword,EmailID) values('" + txtuname.Text + "','" + txtpass.Text + "','" + txtrepass.Text + "','" + txtemail.Text + " )";
                cmd = new SqlCommand(sql, cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
                Response.Redirect("login.aspx");
            }
            else
            {
                lab1.Text = "Not Match Password!!";
            }
        }
    }
}