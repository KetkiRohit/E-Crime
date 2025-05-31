using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Citizen_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "You've Logged as Citizen. <br/><br/>Your id is " + Session["Cid"].ToString() + "<br/><br/> Your Name is : " + Session["Cname"].ToString();
    }
}