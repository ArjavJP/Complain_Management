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
    public partial class request : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-GKTLMI6\SQLEXPRESS;Initial Catalog=complain_managment;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            cn.Open();

            SqlCommand cmd2 = new SqlCommand("Select isnull(max(ServiceNo),0) ServiceNo from TransactionMst", cn);
            SqlDataReader dr = cmd2.ExecuteReader();

            if (dr.Read())
            {
                lbl_itemcode.Text = dr["ServiceNo"].ToString();

            };

            cn.Close();
        }

        protected void btn_request_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("insert into TransactionMst (ServiceNo,ClientName,MobileNo,ItemCode,Descripiton,Address) values (@ServiceNo,@ClientName,@MobileNo,@ItemCode,@Descripiton,@Address)", cn);
            cmd.Parameters.AddWithValue("ServiceNo", Convert.ToInt16(lbl_itemcode.Text) + 1);
            cmd.Parameters.AddWithValue("ClientName", txt_name.Text);
            cmd.Parameters.AddWithValue("MobileNo", txt_mobile.Text);
            cmd.Parameters.AddWithValue("ItemCode", drop_item.SelectedValue);
            cmd.Parameters.AddWithValue("Descripiton", txt_description.Text);
            cmd.Parameters.AddWithValue("Address", txt_add.Text);



            cn.Open();
            cmd.ExecuteReader();
            cn.Close();


            txt_name.Text = "";
            txt_mobile.Text = "";
            drop_item.SelectedValue = "";
            txt_description.Text = "";
            txt_add.Text = "";
            txt_name.Focus();
        }
    }
}