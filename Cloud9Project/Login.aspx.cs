using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Windows.Forms;

namespace Cloud9Project
{
    public partial class Login : System.Web.UI.Page
    {
        public Boolean usernameflag;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LoginControllerTest log = new LoginControllerTest();

          usernameflag=log.retrieveAccount(TextBox1.Text);
          if (usernameflag == true)
              Response.Redirect("CCPTest.aspx");

          else
              ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Username does not exist.');", true);

        }


    }
}