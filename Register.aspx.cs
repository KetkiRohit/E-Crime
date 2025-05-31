using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    SqlConnection connection;
    string inssql, cid;
    SqlCommand command;

    protected void Page_Load(object sender, EventArgs e)
    {
        connection = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\eCrimeDB.mdf;Integrated Security=True;User Instance=True");
        cid = DateTime.Now.ToString("C-yy-MMdd-HHmmss");
    }
    protected void btn_register_Click(object sender, EventArgs e)
    {
        inssql = "INSERT INTO citizen VALUES ('"
                        + cid + "' , '"
                        + txt_name.Text + "' , '"
                        + ddl_gender.SelectedItem.Text + "' , "
                        + txt_age.Text + " , '"
                        + txt_address.Text + "' , '"
                        + txt_city.Text + "' , '"
                        + txt_state.Text + "' , '"
                        + txt_pin.Text + "' , '"
                        + txt_phone.Text + "' , '"
                        + txt_email.Text + "' , '"
                        + txt_username.Text + "' , '"
                        + txt_pass.Text + "')";

        command = new SqlCommand(inssql, connection);

        try
        {
            connection.Open();
            command.ExecuteNonQuery();
            lbl_mess.Text = "Your Registration is Successfull. Please Login";
        }
        finally
        {
            connection.Close();
        }

    }
}