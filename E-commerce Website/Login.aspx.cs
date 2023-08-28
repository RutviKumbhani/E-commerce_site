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
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        con = new OleDbConnection(x);
        if (!IsPostBack)
        {
        }
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String user = TextBox1.Text;
        String pass = TextBox2.Text;
        String s = "select * from registration where unm='" + user + "' and pass='" + pass + "'";
        //  SqlDataAdapter da = new SqlDataAdapter(s, con);
        OleDbDataAdapter da = new OleDbDataAdapter(s, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count.Equals(1))
        {

            Session["uid"] = TextBox1.Text;
            Response.Redirect("Product.aspx");

        }
        else
        {
            Response.Write("<script>alert('Error :- Username and Password are wrong...!')</script>");
        }


        con.Close();
    
    }

   
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
  
}
