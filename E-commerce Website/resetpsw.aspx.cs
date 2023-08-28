using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;
using System.Web.Configuration;
public partial class Default2 : System.Web.UI.Page
{
 OleDbConnection con ;   
    OleDbCommand cmd;
    OleDbDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        con = new OleDbConnection(x);
        if(!IsPostBack)
        TextBox1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string username = TextBox1.Text;
        string opsw = TextBox2.Text;
        string npsw = TextBox3.Text;
        con.Open();
        cmd = new OleDbCommand("Select * From registration Where unm='" + username + "' And pass='" + opsw + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == false)
        {
            dr.Close();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";

          Response.Write("<script>alert(' Invalid Username and Old Password..')</script>");
            TextBox1.Focus();
        }
        else
        {
            dr.Close();
            cmd = new OleDbCommand("Update registration Set pass='" + npsw + "' Where unm='" + username + "'", con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
            con.Close();
            //
            Response.Write("<script>alert('Change your password...!')</script>");
            

        }

    }
}

   
