using System;
using System.Collections.Generic;
using System.Linq;
using MySql.Data.MySqlClient;
using System.Web;
using System.Security.Cryptography;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

using System.Security.Cryptography;
using System.Text;
using System.Web.Security;
using Cloud9Project;



/// <summary>
/// Summary description for test
/// </summary>
/// 

public class useless
{
    public string userId { get; set; }
}

public class test
{


    private MySqlConnection connection;
    private string server;
    private string database;
    private string uid;
    private string password;
    private string user;



    //Constructor
    public test()
    {
        Initialize();
    }



    //Initialize values
    private void Initialize()
    {
        server = "localhost";
        database = "whiteboard";
        uid = "root";
        password = "toor";
        string connectionString;
        connectionString = "SERVER=" + server + ";" + "DATABASE=" +
        database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";

        connection = new MySqlConnection(connectionString);
    }

    public static void Show(string message)
    {
        // Cleans the message to allow single quotation marks
        string cleanMessage = message.Replace("'", "\\'");
        string script = "<script type=\"text/javascript\">alert('" + cleanMessage + "');</script>";

        // Gets the executing web page
        Page page = HttpContext.Current.CurrentHandler as Page;

        // Checks if the handler is a Page and that the script isn't allready on the Page
        if (page != null && !page.ClientScript.IsClientScriptBlockRegistered("alert"))
        {
            page.ClientScript.RegisterClientScriptBlock(typeof(test), "alert", script);
        }
    }



    //open connection to database
    private bool OpenConnection()
    {
        try
        {
            connection.Open();
            return true;
        }
        catch (MySqlException ex)
        {
            //When handling errors, you can your application's response based 
            //on the error number.
            //The two most common error numbers when connecting are as follows:
            //0: Cannot connect to server.
            //1045: Invalid user name and/or password.
            switch (ex.Number)
            {
                case 0:
                    Show("Cannot connect to server.  Contact administrator");
                    break;

                case 1045:
                    Show("Invalid username/password, please try again");
                    break;
            }
            return false;
        }
    }

    //Close connection
    private bool CloseConnection()
    {
        try
        {
            connection.Close();
            return true;
        }
        catch (MySqlException ex)
        {
            //MessageBox.Show(ex.Message);
            return false;
        }
    }

    public void Insert(String user1, String hashed)
    {
        string query = "Update user set OneTimePassword = @hashpassword where UserId =@user";

        //open connection
        if (this.OpenConnection() == true)
        {


            //create command and assign the query and connection from the constructor
            MySqlCommand cmd = new MySqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@hashpassword", hashed);
            cmd.Parameters.AddWithValue("@user", user1);


            //Execute command
            cmd.ExecuteScalar();

            //close connection
            this.CloseConnection();
        }


    }
    public String checkhashed(String UserID)
    {

        string query = "Select OneTimePassword from user where UserId =@user  ";



        if (this.OpenConnection() == true)
        {
            //create command and assign the query and connection from the constructor
            MySqlCommand cmd = new MySqlCommand(query, connection);
            cmd.Parameters.AddWithValue("@user", UserID);



            //Execute command


            string hashed = cmd.ExecuteScalar().ToString();


            //close connection
            this.CloseConnection();

            return hashed;
        }

        else

            return null;
    }


    public void InsertTest()
    {
        string query = "INSERT INTO accounts (name, age) VALUES('John Smith', '33')";

        //open connection
        if (this.OpenConnection() == true)
        {
            //create command and assign the query and connection from the constructor
            MySqlCommand cmd = new MySqlCommand(query, connection);

            //Execute command
            cmd.ExecuteNonQuery();

            //close connection
            this.CloseConnection();
        }
    }

    public List<useless> GetTable()
    {

        List<useless> listTable = new List<useless>();

        String query = "Select Id from table1";
        if (this.OpenConnection() == true)
        {
            //create command and assign the query and connection from the constructor
            MySqlCommand cmd = new MySqlCommand(query, connection);

            //Execute command
            MySqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                useless TableList = new useless();
                TableList.userId = rdr["Id"].ToString();

                listTable.Add(TableList);

            }

            return listTable;

            //close connection

        }
        else
            return null;



    }

    public string retrieveImage(string userid)
    {

        string query = "Select Image from student where AdminNo =@userid";
        string image = null;

        if (this.OpenConnection() == true)
        {

            MySqlCommand cmd = new MySqlCommand(query, connection);
            cmd.Parameters.Add("@userid", userid);

            image = cmd.ExecuteScalar().ToString();

            this.CloseConnection();

            return image;
        }
        else
            return null;


    }

    public List<useless> retrieveEverything()
    {

        List<useless> listTable = new List<useless>();

        String query = "Select Id from table1";
        if (this.OpenConnection() == true)
        {
            //create command and assign the query and connection from the constructor
            MySqlCommand cmd = new MySqlCommand(query, connection);

            //Execute command
            MySqlDataReader rdr = cmd.ExecuteReader();

            while (rdr.Read())
            {
                useless TableList = new useless();
                TableList.userId = rdr["Id"].ToString();

                listTable.Add(TableList);

            }

            return listTable;

            //close connection

        }
        else
            return null;


    }


}




