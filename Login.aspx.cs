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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Login_Click1(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-GKTLMI6\SQLEXPRESS;Initial Catalog=complain_managment;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select * from AdminLoginForm where UserName=@UserName and Password=@Password and AdminOrServiceman ='A'", con);
            cmd.Parameters.AddWithValue("@UserName", txt_username.Text);
            cmd.Parameters.AddWithValue("@Password", txt_password.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                Session["UserName"] = dt.Rows[0]["UserName"].ToString();
                Response.Redirect("Home.aspx");
            }
            else
            {
                string script = "<script type=\"text/javascript\">alert('Invalid username or password.');</script>";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
            }

            SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-GKTLMI6\SQLEXPRESS;Initial Catalog=complain_managment;Integrated Security=True");
            SqlCommand cm = new SqlCommand("select * from AdminLoginForm where UserName=@UserName and Password=@Password and AdminOrServiceman ='E'", cn);
            cm.Parameters.AddWithValue("@UserName", txt_username.Text);
            cm.Parameters.AddWithValue("@Password", txt_password.Text);

            SqlDataAdapter da = new SqlDataAdapter(cm);
            DataTable ds = new DataTable();
            da.Fill(ds);
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();

            if (ds.Rows.Count > 0)
            {
                Session["UserName"] = ds.Rows[0]["UserName"].ToString();
                Response.Redirect("employeehome.aspx");
            }
            else
            {
                string script = "<script type=\"text/javascript\">alert('Invalid username or password.');</script>";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
            }
        }
        protected void btn_registersignup_Click(object sender, EventArgs e)
        {

            Response.Redirect("register.aspx");
        }
    }
}