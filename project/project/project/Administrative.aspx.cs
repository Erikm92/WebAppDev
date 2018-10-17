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
    public partial class Administrative : System.Web.UI.Page
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

                    SqlCommand sCommand = new SqlCommand("Select * from tblinfo;", conn);
                    SqlDataReader sqldr = sCommand.ExecuteReader();
                    divresults.InnerHtml = "<p>";
                while (sqldr.Read())
                {
                  
                    literalname.Text += sqldr["Fullname"].ToString() + "<br />";
                    literalphone.Text += sqldr["Phone"].ToString() + "<br />";
                    literalemail.Text += sqldr["email"].ToString() + "<br />";
                    literalcontact.Text += sqldr["contact"].ToString() + "<br />";
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

        }
    }
