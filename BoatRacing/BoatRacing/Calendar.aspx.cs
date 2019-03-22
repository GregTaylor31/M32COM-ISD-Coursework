using System;
using System.Collections.Generic;
using System.Configuration;
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
        TxtBoxCalendar.Text = Calendar1.SelectedDate.ToString("yyyy-MM-dd");

        string RaceDate = TxtBoxCalendar.Text;

        TxtBoxCalendar.ReadOnly = true;

        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ToString(); 

        con.Open();
        SqlCommand Command = new SqlCommand();


        Command.CommandType = System.Data.CommandType.StoredProcedure; 

        Command.CommandText = "CheckRaceCalendarDates";
        Command.Parameters.AddWithValue("@RaceDate",RaceDate);

        con.Close(); 
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {

    }
}