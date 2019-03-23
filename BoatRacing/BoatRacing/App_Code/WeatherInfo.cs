﻿// GT 23/03/2019
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for WeatherInfo
/// </summary>
public class WeatherInfo
{
    public class coord
    {
        public double lon { get; set;  }
        public double lat { get; set; }
    } //end

    public class weather
    {
        public int id { get; set; }
        public string main { get; set; }
        public string description { get; set; }
    } //end 

    public class main
    {
        public double temp { get; set; }
        public double pressure { get; set; }
        public double humidity { get; set; }
        //public double temp_min { get; set; }
        //public double temp_max { get; set; }
    } //end

    public class wind
    {
        public double speed { get; set; }
    } //end 

    public class sys
    {
        public string country { get; set; }
    } //end 
    
    public class root
    {
        public string name { get; set; }
        public sys sys { get; set; }
        public double dt { get; set; }
        public wind wind { get; set; }
        public main main { get; set; }
        public List<weather> weatherList { get; set; }
        public coord coordinate { get; set; }
    } //end 
}

