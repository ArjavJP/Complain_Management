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
    public partial class trackrequest : System.Web.UI.Page
    {
        string com = "Your Completed Complain";
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-GKTLMI6\SQLEXPRESS;Initial Catalog=complain_managment;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
         
       }
        public DataSet Bind()
        {

            SqlCommand cmd = new SqlCommand("Select ClientName,MobileNo,ItemCode,Descripiton,Status,Success_Failed from TransactionMst where MobileNo like '" + txt_entermobile.Text + "%' and Status != 'Completed' ", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (!object.Equals(ds, null))
            {
                if (ds.Tables[0].Rows.Count > 0)
                {
                    clientrequest.DataSource = ds.Tables[0];
                    clientrequest.DataBind();
                }

            }


            return ds;
        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            if (txt_entermobile == null)
            {
                lblmobile.Text = "Enter your Mobile No";
            }
            else
            {
              
                DataSet ds = Bind();

                if (!object.Equals(ds, null))
                {
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        clientrequest.Visible = true;

                    }


                    else
                    {
                        clientrequest.Visible = false;
                    }
                }
                lbl_complain.Visible = false;
            }
        }
        public DataSet Bind_complete()
        {

            SqlCommand CMD= new SqlCommand("Select ClientName,MobileNo,ItemCode,Descripiton,Status,Success_Failed from TransactionMst where MobileNo like '" + txt_entermobile.Text + "%' and Status = 'Completed' ", cn);
            SqlDataAdapter DA = new SqlDataAdapter(CMD);
            DataSet DS = new DataSet();
            DA.Fill(DS);
            if (!object.Equals(DS, null))
            {
                if (DS.Tables[0].Rows.Count > 0)
                {
                    clientrequest.DataSource = DS.Tables[0];
                    clientrequest.DataBind();
                }

            }


            return DS;
        }
        protected void btn_completed_Click(object sender, EventArgs e)
        {
            if (txt_entermobile == null)
            {
                lblmobile.Text = "Enter your Mobile No";
            }
            else
            {
                DataSet DS = Bind_complete();

                if (!object.Equals(DS, null))
                {
                    if (DS.Tables[0].Rows.Count > 0)
                    {
                        clientrequest.Visible = true;

                    }


                    else
                    {
                        clientrequest.Visible = false;
                    }
                    lbl_complain.Visible = true;
                    lbl_complain.Text = com;
                }
            }
        }
    }
}