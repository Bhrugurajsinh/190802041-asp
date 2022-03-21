﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminmasterpage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fullname"]==null)
        {
            Response.Redirect("~/Login.aspx");
        }
    }

  
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Session["fullname"] = null;
        Response.Redirect("~/Login.aspx");
    }
}
