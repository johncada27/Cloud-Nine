using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

using MySql.Data.MySqlClient;





    public partial class CCPTest : System.Web.UI.Page
    
   {
        String[] clickpoints = {"Hotspot1","Hotspot2", "Hotspot3"};
       // test t = new test();
     
       
        String[] images = { "Images/Ferrari.jpg","Images/fuji.jpg", "Images/LesPaul.jpg" };
        int i;
     
        protected void Page_Load(object sender, EventArgs e)
        
       {
           
           if (!IsPostBack) {
               ImageMap1.ImageUrl = images[0];
               Session["authCheck"] = null;
               Session["i"] = null;
           }
               if (Session["authCheck"] == null)
               {
                   Session["authCheck"] = 0;
               }
               if (Session["i"] == null)
               {
                   Session["i"] = 0;
               }
              

           
        }

        protected void ImageMap1_Click(object sender, ImageMapEventArgs e)
        {

            if (e.PostBackValue.ToString() == clickpoints[(int)Session["i"]])
            {
                Session["authCheck"] = (int)Session["authCheck"] + 1;



            }
            Session["i"] = (int)Session["i"] + 1;



            if ((int)Session["i"] < images.Length)
                ImageMap1.ImageUrl = images[(int)Session["i"]];
            else
                if ((int)Session["authCheck"] == images.Length)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Success!');", true);
                     
                }

                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Failure!');", true);
                    
                   
                }

           
        }


        protected int initializeAuthenticationCheck()
        {
            int authCheck = 0;
            return authCheck;


        }

        protected int initializeCounter()
        {
            int counter = 0;
            return counter;


        }

     
   }

