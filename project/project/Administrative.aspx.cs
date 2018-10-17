using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.UI.WebControls;

namespace project
{
    public partial class Administrative : System.Web.UI.Page
    {
        private StringBuilder table = new StringBuilder();
        private SqlConnection conn = new SqlConnection();
        private string connstring = "Server=den1.mssql2.gear.host;Initial Catalog=cis4160erik;User ID=cis4160erik;Password=De9X8AkaK!?D" + ";Integrated Security=false";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new SqlConnection();
                conn.ConnectionString = connstring;
                conn.Open();

                SqlCommand sCommand = new SqlCommand("tableoutput", conn);
                sCommand.CommandType = CommandType.StoredProcedure;
                SqlDataReader sqldr = sCommand.ExecuteReader();

                table.Append("<table>");
                table.Append("<tr><th> ID </th><th> Fistname </th><th> LastName </th><th> Phone </th><th> Email </th><th> Contact </th><th> Time </th></tr>");
                if (sqldr.HasRows)
                {
                    while (sqldr.Read())
                    {
                        table.Append("<tr>");
                        table.Append("<td>" + sqldr[6] + "</td>");
                        table.Append("<td>" + sqldr[0] + "</td>");
                        table.Append("<td>" + sqldr[1] + "</td>");
                        table.Append("<td>" + sqldr[2] + "</td>");
                        table.Append("<td>" + sqldr[3] + "</td>");
                        table.Append("<td>" + sqldr[4] + "</td>");
                        table.Append("<td>" + sqldr[5] + "</td>");
                        table.Append("<td> <a href=deleterecord.aspx?ID=" + sqldr[6].ToString() + ">Delete</a>");
                    }
                }
                table.Append("</table>");
                placeholdertable.Controls.Add(new Literal { Text = table.ToString() });

                // this was the first method i had used before finding a method of adding the table element through StringBuilder.
                //    while (sqldr.Read())
                //    {
                //         literalfname.Text += sqldr["Firstname"].ToString() + "<br />";
                //        literallname.Text += sqldr["Lastname"].ToString() + "<br />";
                //         literalphone.Text += sqldr["Phone"].ToString() + "<br />";
                //         literalemail.Text += sqldr["Email"].ToString() + "<br />";
                //         literalcontact.Text += sqldr["Contact"].ToString() + "<br />";
                //         literaltime.Text +=sqldr["time"].ToString() + "<br />";

                //     }
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