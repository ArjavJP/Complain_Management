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
   
    public partial class employeehome : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-GKTLMI6\SQLEXPRESS;Initial Catalog=complain_managment;Integrated Security=True");
        string sta = "Completed";
        string neww = "New Complain For You";
        string comm = "Complain Completed  By You";
        string complete;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
                Response.Redirect("Login.aspx");

            if (!this.IsPostBack)
            {
                lblcode.Text = Session["UserName"].ToString();
            }
            lblstatus.Text = sta;

        }
        public DataSet Fetch()
        {
            string str01 = "";
            str01 = "SELECT  ServiceNo,ClientName,ItemName,Descripiton,ServiceManname,EmployeeRemark," +
                "Status,Success_Failed from employeeMst e  JOIN AdminLoginForm a ON e.Code = a.Code " +
                "JOIN TransactionMst t ON e.ServiceMancode = t.ServiceMancode JOIN itemMst i on i.ItemCode " +
                "= t.ItemCode where UserName = @UserName and Status ='Assigned'";

            SqlCommand cmd = new SqlCommand(str01, cn);
            cmd.Parameters.AddWithValue("@UserName", Session["UserName"]);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    employee.DataSource = ds.Tables[0];
                    employee.DataBind();
                }

            }


            return ds;
        }
        public DataSet fetch()
        {
            string str01 = "";
            str01 = "SELECT  ServiceNo,ClientName,ItemName,Descripiton,ServiceManname,EmployeeRemark," +
                "Status,Success_Failed  from employeeMst e  JOIN AdminLoginForm a ON e.Code = a.Code " +
                "JOIN TransactionMst t ON e.ServiceMancode = t.ServiceMancode JOIN itemMst i on i.ItemCode " +
                "= t.ItemCode where UserName = @UserName and Status ='Completed'";

            SqlCommand cmd = new SqlCommand(str01, cn);
            cmd.Parameters.AddWithValue("@UserName", Session["UserName"]);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    employee.DataSource = ds.Tables[0];
                    employee.DataBind();
                }

            }


            return ds;

        }
        protected void btn_newe_Click(object sender, EventArgs e)
        {

            DataSet ds = Fetch();

            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    employee.Visible = true;

                }


                else
                {
                    employee.Visible = false;
                }
            }
            lbl_complain2.Text = neww;
            btn_up.Enabled = true;
            btn_up.Visible = true;
        }

        protected void btn_compe_Click(object sender, EventArgs e)
        {
            DataSet ds = fetch();

            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    employee.Visible = true;

                }


                else
                {
                    employee.Visible = false;
                }
            }
            lbl_complain2.Text = comm;
            btn_up.Enabled = false;
            btn_up.Visible = false;
        }

        protected void employee_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = employee.SelectedRow;
            string serviceid = row.Cells[1].Text;
            txtup.Text = serviceid;
        }
        protected void btn_employeeupdate_Click(object sender, EventArgs e)
        {
            if (radio_com.SelectedValue == "Success")
            {
                complete = "S";
            }
            else if (radio_com.SelectedValue == "Failed")
            {
                complete = "F";
            }
            cn.Open();


            string ServiceNo = txtup.Text;

            SqlCommand cmd = new SqlCommand("update TransactionMst Set EmployeeRemark=@EmployeeRemark, Status=@Status,Success_Failed=@Success_Failed where ServiceNo=@ServiceNo", cn);

            cmd.Parameters.AddWithValue("@EmployeeRemark", txtremark.Text);
            cmd.Parameters.AddWithValue("@Status", lblstatus.Text);
            cmd.Parameters.AddWithValue("@Success_Failed", complete);
            cmd.Parameters.AddWithValue("ServiceNo", ServiceNo);
            cmd.ExecuteNonQuery();
            Fetch();
            cn.Close();
            txtup.Text = "";
            txtremark.Text = "";

        }
    }
}
       
