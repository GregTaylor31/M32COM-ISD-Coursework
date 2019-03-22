using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calendar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ToString();

        SqlCommand Command = new SqlCommand("CheckRaceCalendarDates", con);
        
        Command.CommandType = CommandType.StoredProcedure;
            
        Command.Parameters.Add("@RaceDates", SqlDbType.DateTime, 50);
        Command.Parameters.Add("@Location", SqlDbType.NVarChar, 50).Direction = ParameterDirection.Output;
            
        DateTime RaceDate = Calendar1.SelectedDate;
        Command.Parameters["@RaceDates"].Value = RaceDate;

        con.Open();

        Command.ExecuteNonQuery();

        string location = Command.Parameters["@Location"].Value.ToString();
        
        con.Close();
        
        txtboxRaceInfo.ReadOnly = true;

        if (location == "")
        {
            txtboxRaceInfo.Text = "There is no race today!";
        }
        else
        {
            txtboxRaceInfo.Text = location; 
        }
    }
}