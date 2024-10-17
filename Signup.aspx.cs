using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace complain_managment
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void link_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btn_registersignup_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-GKTLMI6\SQLEXPRESS;Initial Catalog=complain_managment;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into tbl_registration values (@FirstName,@LastName,@ContactNo,@Email_id,@Password,@State,@City,@Pincode)", cn);
            cmd.Parameters.AddWithValue("FirstName", txt_fname.Text);
            cmd.Parameters.AddWithValue("LastName", txt_lname.Text);
            cmd.Parameters.AddWithValue("ContactNo", txt_contact.Text);
            cmd.Parameters.AddWithValue("Email_id", txt_email.Text);
            cmd.Parameters.AddWithValue("Password", txt_registerpass.Text);
            cmd.Parameters.AddWithValue("State", drop_state.SelectedValue);
            cmd.Parameters.AddWithValue("City", txt_city.Text);
            cmd.Parameters.AddWithValue("Pincode", txt_pincode.Text);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            txt_fname.Text = "";
            txt_lname.Text = "";
            txt_contact.Text = "";
            txt_email.Text = "";
            txt_registerpass.Text = "";
            drop_state.SelectedValue = "";
            txt_city.Text = "";
            txt_pincode.Text = "";
            txt_fname.Focus();
        }
    }
}