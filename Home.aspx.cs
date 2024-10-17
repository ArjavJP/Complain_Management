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
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-GKTLMI6\SQLEXPRESS;Initial Catalog=complain_managment;Integrated Security=True");
        string sta = "Assigned";
        string newcom = "New Complain";
        string ass = "Assigned Complain";
        string com = "Completed Complain";
        public DataSet Bind()
        {
            string str01 = "";
            str01 = "SELECT ServiceNo,ClientName,MobileNo,ItemName,Descripiton,ServiceManname,EmployeeRemark," +
                "Status,Success_Failed FROM employeeMst e   JOIN TransactionMst t ON e.ServiceMancode =" +
                " t.ServiceMancode JOIN itemMst i on i.ItemCode = t.ItemCode where Status='Pending'";
            SqlCommand cmd = new SqlCommand(str01, cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    admincomplain.DataSource = ds.Tables[0];
                    admincomplain.DataBind();
                }

            }


            return ds;
        }
        public DataSet Bindass()
        {
            string str02 ="";
            str02 = "SELECT ServiceNo,ClientName,MobileNo,ItemName,Descripiton,ServiceManname,EmployeeRemark," +
                "Status,Success_Failed FROM employeeMst e   JOIN TransactionMst t ON e.ServiceMancode =" +
                " t.ServiceMancode JOIN itemMst i on i.ItemCode = t.ItemCode where Status='Assigned'";
            SqlCommand CMD = new SqlCommand(str02, cn);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            if (!object.Equals(DS, null))
            {
                if (DS.Tables[0].Rows.Count > 0)
                {
                    admincomplain.DataSource = DS.Tables[0];
                    admincomplain.DataBind();
                }

            }


            return DS;
        }
        public DataSet Bindcom()
        {
            string str03 = "";
            str03 = "SELECT ServiceNo,ClientName,MobileNo,ItemName,Descripiton,ServiceManname,EmployeeRemark," +
                "Status,Success_Failed FROM employeeMst e   JOIN TransactionMst t ON e.ServiceMancode =" +
                " t.ServiceMancode JOIN itemMst i on i.ItemCode = t.ItemCode where Status='Completed'";
            SqlCommand Cmd = new SqlCommand(str03, cn);
            SqlDataAdapter Da = new SqlDataAdapter(Cmd);
            DataSet Ds = new DataSet();
            Da.Fill(Ds);
            if (!object.Equals(Ds, null))
            {
                if (Ds.Tables[0].Rows.Count > 0)
                {
                    admincomplain.DataSource = Ds.Tables[0];
                    admincomplain.DataBind();
                }

            }


            return Ds;
        }
       
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl_complain.Text = newcom;
            DataSet ds = Bind();

            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    admincomplain.Visible = true;

                }


                else
                {
                    admincomplain.Visible = false;
                }
            }
            lblstatus.Text = sta;

        }
        
        protected void btn_assigned_Click(object sender, EventArgs e)
        {
            btn_new.Visible = true;
            btn_new.Enabled = true;
            btn_assigned.Visible = false;
            btn_assigned.Enabled = false;
            btn_complete.Visible = true;
            btn_complete.Enabled = true;
            btn_serviceman.Enabled = false;
            btn_serviceman.Visible = false;
            lbl_complain.Text = ass;
            DataSet DS = Bindass();

            if (!object.Equals(DS, null))
            {
                if (DS.Tables[0].Rows.Count > 0)
                {
                    admincomplain.Visible = true;

                }


                else
                {
                    admincomplain.Visible = false;
                }
            }

        }

        protected void btn_new_Click(object sender, EventArgs e)
        {
            btn_new.Visible = false;
            btn_new.Enabled = false;
            btn_assigned.Visible = true;
            btn_assigned.Enabled = true;
            btn_complete.Visible = true;
            btn_complete.Enabled = true;
            btn_serviceman.Enabled = true;
            btn_serviceman.Visible = true;
            lbl_complain.Text = newcom;

        }

        protected void btn_complete_Click(object sender, EventArgs e)
        {
            btn_new.Visible = true;
            btn_new.Enabled = true;
            btn_assigned.Visible = true;
            btn_assigned.Enabled = true;
            btn_complete.Visible = false;
            btn_complete.Enabled = false;
            btn_serviceman.Enabled = false;
            btn_serviceman.Visible = false;
            lbl_complain.Text = com;



            DataSet Ds = Bindcom();

            if (!object.Equals(Ds, null))
            {
                if (Ds.Tables[0].Rows.Count > 0)
                {
                    admincomplain.Visible = true;

                }


                else
                {
                    admincomplain.Visible = false;
                }
            }
        }


       
        
   

        protected void admincomplain_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = admincomplain.SelectedRow;
            string serviceid = row.Cells[1].Text;
            txtser.Text = serviceid;
        }
        protected void btn_service_Click(object sender, EventArgs e)
        {

            cn.Open();


            string ServiceNo = txtser.Text;
            
            SqlCommand cmd = new SqlCommand("update TransactionMst Set ServiceManCode=@ServiceManCode, Status=@Status  where ServiceNo=@ServiceNo", cn);  

            cmd.Parameters.AddWithValue("@ServiceManCode", drop_service.SelectedValue);
            cmd.Parameters.AddWithValue("@Status", lblstatus.Text);
            cmd.Parameters.AddWithValue("ServiceNo", ServiceNo);
            cmd.ExecuteNonQuery();
            Bind();
            cn.Close();
            txtser.Text = "";
            drop_service.SelectedValue = "";

        }
    }



}
    
