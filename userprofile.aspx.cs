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
    public partial class userprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-GKTLMI6\SQLEXPRESS;Initial Catalog=complain_managment;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("select * from tbl_registration", con);
            SqlDataReader dr = com.ExecuteReader();

            if (dr.Read())
            {
                lbl_fname.Text = dr["FirstName"].ToString();
                lbl_lname.Text = dr["LastName"].ToString();
                lbl_contact.Text = dr["ContactNo"].ToString();
                lbl_email.Text = dr["Email_id"].ToString();
                lbl_state.Text = dr["State"].ToString();
                lbl_city.Text = dr["City"].ToString();
                lbl_pincode.Text = dr["Pincode"].ToString();
            };
            con.Close();
            //string email = Session["Email_id"].ToString();
            //Convert.ToInt32(Session["EmpId"].ToString());
        }
    }
}