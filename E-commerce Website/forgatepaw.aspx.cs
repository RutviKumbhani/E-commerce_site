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

using System.Data.OleDb;
using System.Web.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    OleDbConnection con;
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
      

        con.Open();
        string sel = "SELECT * FROM  registration where (unm = '" + TextBox1.Text+ "') AND (hint_no = '" + txtques.Text + "') AND (ans = '" + TextBox3.Text+ "')";
        cmd = new OleDbCommand(sel, con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Label1.Visible = true;
            TextBox2.Visible=true;
            TextBox2.Text = dr[0].ToString();
            Label1.Text = "Your password";
            TextBox1.Text = "";
            TextBox3.Text = "";
            Response.Redirect("Login.aspx");
        }
        else
        {
            //Response.Write("<script>window.alert('plz enter correct information')</script>");
            Label1.Visible = true;
            Label1.Text = "plz enter correct information";
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox2.Text = "";
           
        }
        con.Close();
    }
}
