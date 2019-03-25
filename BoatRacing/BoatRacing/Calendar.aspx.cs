using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class Calendar : System.Web.UI.Page
{
    // Sets up Weather API
    const String APIID = "b6907d289e10d714a6e88b30761fae22";
    //string CityName = "London";
   

    void getWeather(String CityName)
    {
        using(WebClient web = new WebClient())
        {
            string url = string.Format("https://openweathermap.org/data/2.5/weather?q={0}&appid={1}",CityName,APIID);

            var json = web.DownloadString(url);

            var result = JsonConvert.DeserializeObject<WeatherInfo.root>(json);
            WeatherInfo.root outPut = result;

            // Outputs weather API to labels on screen
          //  lblCityName.Text = string.Format("{0}", outPut.name);
            lblCountry.Text = string.Format("Country: " + "{0}", outPut.sys.country);
            lblTemp.Text = string.Format("Current Temperature: " +"{0} \u00B0" +"C", outPut.main.temp);
            lblHumididty.Text = string.Format("Humidity: " + "{0}" + "%", outPut.main.humidity);
            lblWindSpeed.Text = string.Format("Wind Speed: "+ "{0}"  +"MPH", outPut.wind.speed);
            lblMinTemp.Text = string.Format("Min Temperature: " + "{0} \u00B0" + "C", outPut.main.temp_min);
            lblMaxTemp.Text = string.Format("Max Temperature: " + "{0} \u00B0" + "C", outPut.main.temp_max);


            lblLocation.Visible = true;

        }
       

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //Creates session, if no session then redirect to login page
        if (Session["New"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        lblLocation.Visible = false;
        lblRaceInformation.Text = "Please select a date from the calendar";
       

    }
    
    // Queries database for Location and lakename 
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ToString();

        SqlCommand Command = new SqlCommand("CheckRaceCalendarDates", con);
        
        Command.CommandType = CommandType.StoredProcedure;
            
        Command.Parameters.Add("@RaceDates", SqlDbType.DateTime, 50);
        Command.Parameters.Add("@Location", SqlDbType.NVarChar, 50).Direction = ParameterDirection.Output;
        Command.Parameters.Add("@LakeName", SqlDbType.NVarChar, 50).Direction = ParameterDirection.Output;
            
        DateTime RaceDate = Calendar1.SelectedDate;
        Command.Parameters["@RaceDates"].Value = RaceDate;

        con.Open();

        Command.ExecuteNonQuery();

        string location = Command.Parameters["@Location"].Value.ToString();
        string LakeName = Command.Parameters["@LakeName"].Value.ToString();

        LblLakeName.Text = LakeName; 
        
        con.Close();

        lblLocation.Visible = true;
        lblRaceInformation.Text = "Race Location Information";

        //txtboxRaceInfo.ReadOnly = true;

        if (location == "")
        {
            lblLocation.Text = "There is no race today!";
           

            lblCountry.Text = "";
            lblTemp.Text = "";
            lblHumididty.Text = "";
            lblWindSpeed.Text = "";
            lblMinTemp.Text = "";
            lblMaxTemp.Text = "";
            
        }
        else
        {
            lblLocation.Text = location;
            getWeather(location);

        }

    }
    // Sets the dates from RaceCalendar and turns them green on the calendar 
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ToString();
        SqlCommand cmd = new SqlCommand("SELECT RaceDates FROM RaceCalendar", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
           // Response.Write(dr["RaceDates"].ToString());
            if (!e.Day.IsOtherMonth && e.Day.Date.Equals(dr["RaceDates"]))
            {
                e.Cell.BackColor = System.Drawing.Color.MediumSpringGreen;
                e.Cell.ToolTip = "Race on this date";
            }  
           
           
        }
        
            // txtboxRaceInfo.Visible = true;
        }
    
}
