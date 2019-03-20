//GT 09/02/2019 Created File
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration; 
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        Connection.Open();
        String CheckUser = " SELECT COUNT(*) FROM [UserData] WHERE UserName = '" + TxtBoxLoginUsername.Text + "'";
        SqlCommand Command = new SqlCommand(CheckUser, Connection);
        int Var = Convert.ToInt32(Command.ExecuteScalar().ToString());
        if (Var == 1)
        {
            //Connection.Open();
            String VerifyPasswordQuery = " IF EXISTS (SELECT Password FROM UserData WHERE Password LIKE '" + TxtBoxLoginPassword.Text + "' AND UserName LIKE '" + TxtBoxLoginUsername.Text + "'  )BEGIN SELECT 1 END";

            SqlCommand VerifyPasswordCommand = new SqlCommand(VerifyPasswordQuery, Connection);
            Boolean Password = Convert.ToBoolean(VerifyPasswordCommand.ExecuteScalar()); //.Replace(" ","")
            


            if (Password)
            {
                Response.Write("correct Password");
                Session["NEW"] = TxtBoxLoginUsername.Text;
                Response.Redirect("Home.aspx");
                
            }
           else
            {
                Response.Write("Incorrect Password ");
            }
        }
        else
        {
            Response.Write("Incorrect Username");
        }
        Connection.Close();
        
    }
}