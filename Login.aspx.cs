using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection connection;
    string sql;
    SqlCommand command;
    SqlDataAdapter da;
    SqlDataReader sdr;

    protected void Page_Load(object sender, EventArgs e)
    {
        connection = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eCrimeDB.mdf;Integrated Security=True;User Instance=True");
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {

        try
        {
            sql = "Select cemail, cname, cid from Citizen where username = @username and password = @password";
            
            command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@username", txt_username.Text);
            command.Parameters.AddWithValue("@password", txt_pass.Text);
            command.CommandType = CommandType.Text;
            connection.Open();
            da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows[0]["cemail"] == "")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session["Cid"] = dt.Rows[0]["cid"];
                Session["Cname"] = dt.Rows[0]["cname"];
                Session["Email"] = dt.Rows[0]["cemail"];
               
                Response.Redirect("~/Citizen/Home.aspx");
            }
        }
        catch (Exception ex)
        {
            lbl_mess.Text = "OOPs! Please Enter Valid Details";
        }

        finally
        {
            connection.Close();
        }
    }
}