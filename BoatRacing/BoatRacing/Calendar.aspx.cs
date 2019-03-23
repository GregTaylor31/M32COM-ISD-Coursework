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

    const String APIID = "";
    string CityName = "London";
   

    void getWeather()
    {
        using(WebClient web = new WebClient())
        {
            string url = string.Format("https://openweathermap.org/data/2.5/weather?q=London,uk&appid=b6907d289e10d714a6e88b30761fae22");

            var json = web.DownloadString(url);

            var result = JsonConvert.DeserializeObject<WeatherInfo.root>(json);
            WeatherInfo.root outPut = result;


            lblCityName.Text = string.Format("{0}", outPut.name);
            lblCountry.Text = string.Format("{0}", outPut.sys.country);
            lblTemp.Text = string.Format("{0} \u00B0" +"C", outPut.main.temp);

        }
       

    }

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
            getWeather();

        }

    }

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
    }
}
