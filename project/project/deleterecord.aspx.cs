using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace project
{
    public partial class deleterecord : System.Web.UI.Page

    {
        SqlConnection conn = new SqlConnection();
        string connstring = "Server=den1.mssql2.gear.host;Initial Catalog=cis4160erik;User ID=cis4160erik;Password=De9X8AkaK!?D" + ";Integrated Security=false";
        protected void Page_Load(object sender, EventArgs e)
        {
           //this will load the page with the data record/information that was selected from the administrative page
           string gettingid = Request.QueryString["ID"].ToString();
           int findingid;
            findingid = Convert.ToInt32(gettingid);
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = connstring;
                conn.Open();
                
                SqlCommand sCommand = new SqlCommand("showidrecord", conn);
                sCommand.CommandType = CommandType.StoredProcedure;
                SqlParameter sparamshowid = new SqlParameter("@showID", SqlDbType.Int);
                sCommand.Parameters.Add(sparamshowid);
                sparamshowid.Value = findingid;
                SqlDataReader sqldr = sCommand.ExecuteReader();



                while (sqldr.Read())
                {

                    lblfname.Text = sqldr["Firstname"].ToString();
                    lbllname.Text = sqldr["Lastname"].ToString();
                    lblphone.Text = sqldr["Phone"].ToString();
                    lblemail.Text = sqldr["email"].ToString();
                    lblcontact.Text = sqldr["contact"].ToString();
                    lblid.Text = sqldr["ID"].ToString();
                 }

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

        protected void Btndeleteid_Click(object sender, EventArgs e)
        {   //this will delete the record based on a store proceudre "deleteuser" and the ID is in a parameter
            string gettingid = Request.QueryString["ID"].ToString();
            int findingid;
            findingid = Convert.ToInt32(gettingid);

            try
            {

                conn = new SqlConnection();
                conn.ConnectionString = connstring;
                conn.Open();

                SqlCommand sCommand = new SqlCommand("deleteuser", conn);
                sCommand.CommandType = CommandType.StoredProcedure;
                SqlParameter sparamid = new SqlParameter("@UserID", SqlDbType.Int);
                sparamid.Value = Convert.ToInt32(findingid);
                sCommand.Parameters.Add(sparamid);

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
            lbldeleted.Text = "Successfully Deleted the Record";


        }
        protected void Btnreturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrative.aspx");
        }
    }
}
