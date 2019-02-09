//GT 09/02/2019 Created File
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        //Response.Write("Registration Successful"); 

    }

    protected void BtnRegister_Click(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
            SqlConnection Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            Connection.Open();
            String CheckUser = " SELECT COUNT(*) FROM [UserData] WHERE UserName = '" + TxtBoxUserName.Text + "'";
            SqlCommand Command = new SqlCommand(CheckUser, Connection);
            int Var = Convert.ToInt32(Command.ExecuteScalar().ToString());
            if (Var >= 1)
            {
                Response.Write("This Username already exists. Please enter another.");
            }



            else
            {
                try
                {

                    SqlConnection Connection1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    Connection1.Open();
                    String IQuery = "INSERT INTO UserData (Username, Password, Email) VALUES (@UserName, @Password, @Email)";
                    SqlCommand Command1 = new SqlCommand(IQuery, Connection1);

                    Command1.Parameters.AddWithValue("@Username", TxtBoxUserName.Text);
                    Command1.Parameters.AddWithValue("@Password", TxtBoxPassword.Text);
                    Command1.Parameters.AddWithValue("@Email", TxtBoxEmail.Text);
                    Command1.ExecuteNonQuery();
                    Response.Redirect("login.aspx");
                    
                    Response.Write("Registration Successful");
                    Connection1.Close();

                }
                catch (Exception ex)
                {
                    Response.Write("Oopps:" + ex.ToString());
                }

                Connection.Close();
            }

        }
    }
}
