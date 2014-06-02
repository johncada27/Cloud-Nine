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
using System.Collections;
using System.Diagnostics;



    public partial class CCPTest : System.Web.UI.Page
    
   {
        String[] clickpoints = {"Hotspot1","Hotspot2", "Hotspot3"};
       // test t = new test();
     
       
        String[] images = { "Images/Ferrari.jpg","Images/fuji.jpg", "Images/LesPaul.jpg" };
        int i;

      //  Stopwatch sw = new Stopwatch();
        
        DateTime dtStart;
        DateTime dtEnd;

        protected void Page_Load(object sender, EventArgs e)
        
       {
           TotalImage.Text = images.Length.ToString();
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

                //sw.Start();
                //string now1 = string.Format("{0:HH:mm:ss tt}", DateTime.Now);
                if(Session["clickstart"]== null)
                {
                dtStart = DateTime.Now;
                Session["clickstart"] = dtStart;
                }
           

                
            }
            Session["i"] = (int)Session["i"] + 1;

          

            if ((int)Session["i"] < images.Length)
            {
                ImageMap1.ImageUrl = images[(int)Session["i"]];
                   int imageNo1 = (int)Session["i"] + 1;
                   NumberImage.Text = imageNo1.ToString();
                
            }
            else
                if ((int)Session["authCheck"] == images.Length)
                {


                    //sw.Stop();
                    //TimeSpan ts = sw.Elapsed;
                    //string elapsedTime = String.Format("{0:00}:{1:00}:{2:00}.{3:00}",ts.Hours, ts.Minutes, ts.Seconds,ts.Milliseconds / 10);
                    // TimeSpan span = DateTime.Now.Subtract(dtStart);
                    // int elapsedtime = Convert.ToInt32(span.TotalSeconds);

                    dtEnd = DateTime.Now;
                    DateTime dtStart = Convert.ToDateTime(Session["clickstart"]);
                    double tsDifference = (dtEnd - dtStart).TotalSeconds;
                    double TimeTick = DateTime.Now.Ticks - dtStart.Ticks;


                    Session["clickstart"] = null;
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Success!  You have used  " + tsDifference + " seconds, " + TimeTick + " ticks');", true);
       



                }

                else
                {
                    Session["clickstart"] = null;
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

