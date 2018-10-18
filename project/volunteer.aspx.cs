using System;
using System.Data;
using System.Data.SqlClient;

namespace project
{
    public partial class volunteer : System.Web.UI.Page
    {
        private SqlConnection conn = new SqlConnection();
        private string connstring = "Server=den1.mssql2.gear.host;Initial Catalog=cis4160erik;User ID=cis4160erik;Password=De9X8AkaK!?D" + ";Integrated Security=false";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = connstring;
                conn.Open();

                SqlCommand sCommand = new SqlCommand("gettingtime", conn);
                sCommand.CommandType = CommandType.StoredProcedure;
                SqlDataReader sqldr = sCommand.ExecuteReader();
                divresults.InnerHtml = "<h3>";
                while (sqldr.Read())
                {
                    string dates = sqldr["Dates"].ToString();
                    char[] space = { ' ' };
                    string[] dateonly = dates.Split(space);
                    dates = dateonly[0];

                    string starttime = sqldr["timestart"].ToString();
                    starttime = starttime.Remove(starttime.Length - 3);

                    string endtime = sqldr["timeend"].ToString();
                    endtime = endtime.Remove(endtime.Length - 3);
                    divresults.InnerHtml += "<h3>Date " + dates + " Time " + starttime + "pm-" + endtime + "pm";
                }
                divresults.InnerHtml += "</h3>";
            }
            catch (Exception erproblem)
            {
                Response.Write(erproblem.Message);
            }
            finally
            {
                if (conn != null) { conn.Close(); }
            }
        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = connstring;
                conn.Open();
                SqlCommand sCommand = new SqlCommand("savingrecord", conn);
                sCommand.CommandType = CommandType.StoredProcedure;
                SqlParameter sparamfirst = new SqlParameter("@FirstName", SqlDbType.VarChar);
                SqlParameter sparamlast = new SqlParameter("@LastName", SqlDbType.VarChar);
                SqlParameter sparamphone = new SqlParameter("@Phone", SqlDbType.VarChar);
                SqlParameter sparamemail = new SqlParameter("@Email", SqlDbType.VarChar);
                SqlParameter sparamcontact = new SqlParameter("@Contact", SqlDbType.VarChar);

                sCommand.Parameters.Add(sparamfirst);
                sCommand.Parameters.Add(sparamlast);
                sCommand.Parameters.Add(sparamphone);
                sCommand.Parameters.Add(sparamemail);
                sCommand.Parameters.Add(sparamcontact);

                sparamfirst.Value = txtfname.Text.ToString();
                sparamlast.Value = txtlname.Text.ToString();
                sparamphone.Value = Txtphone.Text.ToString();
                sparamemail.Value = Txtemail.Text.ToString();
                sparamcontact.Value = drdlist.Text.ToString();

                if (String.IsNullOrEmpty(txtbest.Text.ToString()))
                { sCommand.Parameters.Add("@Time", SqlDbType.VarChar).Value = DBNull.Value; }
                else

                {
                    sCommand.Parameters.Add("@Time", SqlDbType.VarChar).Value = txtbest.Text.ToString();
                }

                sCommand.ExecuteNonQuery();
            }
            catch (Exception erproblem)
            {
                Response.Write(erproblem.Message);
            }
            finally
            {
                if (conn != null) { conn.Close(); }
            }

            lblupdate.Text = "Successfully Registered";
            txtfname.Text = " ";
            txtlname.Text = " ";
            Txtphone.Text = " ";
            Txtemail.Text = " ";
            txtbest.Text = " ";
        }

        protected void Drdlist_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (drdlist.SelectedValue == "Phone")
            {
                pnlshow.Visible = true;
            }
            if (drdlist.SelectedValue == "Email")

            {
                pnlshow.Visible = false;
            }
        }
    }
}