using System;
using System.Collections.Generic;
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
        TxtBoxCalendar.Text = Calendar1.SelectedDate.ToString();
        TxtBoxCalendar.ReadOnly = true; 

    }
}