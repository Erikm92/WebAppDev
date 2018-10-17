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
    public partial class volunteer : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
       string connstring = "Server=den1.mssql2.gear.host;Initial Catalog=cis4160erik;User ID=cis4160erik;Password=De9X8AkaK!?D" + ";Integrated Security=false";
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {

                conn = new SqlConnection();
                conn.ConnectionString = connstring;
                conn.Open();
           
                SqlCommand sCommand = new SqlCommand("Select * from tbltime;", conn);
                SqlDataReader sqldr = sCommand.ExecuteReader();
                divresults.InnerHtml = "<p>";
                while (sqldr.Read())
                {
                    divresults.InnerHtml += "<p>" + sqldr["Dates"].ToString() + sqldr["timestart"].ToString() + sqldr["timeend"].ToString();
                }
                divresults.InnerHtml += "<p>";

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


            conn = new SqlConnection();
            conn.ConnectionString = connstring;
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText ="insert into [dbo].[tblinfo] values(@Fullname, @Phone, @email, @contact)";
            cmd.Parameters.Add("@Fullname", SqlDbType.VarChar).Value = txtname.Text.ToString();
            cmd.Parameters.Add("@Phone", SqlDbType.Int).Value = Txtphone.Text.ToString();
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = Txtemail.Text.ToString();
            cmd.Parameters.Add("@contact", SqlDbType.VarChar).Value = txtbest.Text.ToString();

            cmd.ExecuteNonQuery();
           

            lblupdate.Text = "Successfully Registered";
            conn.Close();
        }

    }

        
    }
