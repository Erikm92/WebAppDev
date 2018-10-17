using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class WebFormcsharp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click1(Object sender, EventArgs e)
        {
            Label1.Text = "Clicked at " + DateTime.Now.ToString();
        }


    }
}

