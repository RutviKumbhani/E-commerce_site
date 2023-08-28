using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

using System.Web.Configuration;
public partial class Admin1_l1 : System.Web.UI.Page
{
    OleDbConnection con;

    protected void Button1_Click(object sender, EventArgs e)
    {
      
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        con = new OleDbConnection(x);
        con.Open();

        String user = TextBox1.Text;
        String pass = TextBox2.Text;

        String s = "select * from tblAdmin where Login_ID='" + user + "' and Password='" + pass + "'";

        OleDbDataAdapter da = new OleDbDataAdapter(s, con);
        // DataTable dt = new DataTable();
        DataSet dt = new DataSet();
        da.Fill(dt);

        if (dt.Tables[0].Rows.Count > 0)
        {
            Session["unm"] = TextBox1.Text;
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Write("<script>alert('Error :- Username and Password are wrong...!')</script>");
        }
        con.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
