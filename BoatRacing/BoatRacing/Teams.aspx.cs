﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TEST : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("Login.aspx");

        }
    }

    protected void BtnEditTeams_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditMembers.aspx");
    }
}