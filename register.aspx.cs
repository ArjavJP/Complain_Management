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
    public partial class WebForm2 : System.Web.UI.Page
    {
        private string Admin01;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-GKTLMI6\SQLEXPRESS;Initial Catalog=complain_managment;Integrated Security=True");
            cn.Open();

            SqlCommand cmd2 = new SqlCommand("Select isnull(max(Code),0) Code from AdminLoginForm", cn);
            SqlDataReader dr = cmd2.ExecuteReader();

            if (dr.Read())
            {
                lbl_code.Text = dr["Code"].ToString();

            };

            cn.Close();
        }
        protected void btn_registersignup_Click(object sender, EventArgs e)
        {
            if (radio_ae.SelectedValue == "ADMIN")
            {
                Admin01 = "A";
            }
            else if (radio_ae.SelectedValue == "EMPLOYEE")
            {
                Admin01 = "E";
            }
            SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-GKTLMI6\SQLEXPRESS;Initial Catalog=complain_managment;Integrated Security=True");
            {
                cn.Open();
                bool exists = false;


                using (SqlCommand cmd = new SqlCommand("select count(*) from AdminLoginForm where UserName = @UserName", cn))
                {
                    cmd.Parameters.AddWithValue("UserName", txt_uname.Text);
                    exists = (int)cmd.ExecuteScalar() > 0;
                }


                if (exists)
                {
                    string script = "<script type=\"text/javascript\">alert('UserName Already exist');</script>";
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);

                }
                else
                {
                    SqlCommand cmd = new SqlCommand("insert into AdminLoginForm values (@Code,@Name,@UserName,@Password,@Address,@MobileNo,@AdminOrServiceman)", cn);
                    cmd.Parameters.AddWithValue("Code", Convert.ToInt16(lbl_code.Text) + 1);
                    cmd.Parameters.AddWithValue("Name", txt_name.Text);
                    cmd.Parameters.AddWithValue("UserName", txt_uname.Text);
                    cmd.Parameters.AddWithValue("Password", txt_passwword.Text);
                    cmd.Parameters.AddWithValue("Address", txt_address.Text);
                    cmd.Parameters.AddWithValue("MobileNo", txt_mobile.Text);
                    cmd.Parameters.AddWithValue("AdminOrServiceman", Admin01);
                    cmd.ExecuteNonQuery();
                }
                cn.Close();

            }
            txt_name.Text = "";
            txt_uname.Text = "";
            txt_passwword.Text = "";
            txt_address.Text = "";
            txt_mobile.Text = "";
            radio_ae.SelectedValue = "";
            txt_name.Focus();
        }

        protected void linklogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}