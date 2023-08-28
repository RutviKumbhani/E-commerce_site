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
    String tot = "";
   
   
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        con = new OleDbConnection(x);
        con.Open();
        String unm = Session["uid"].ToString();
        String str = "select sum(total) from ADDTOCART1 where unm='" + unm + "'";
        OleDbDataAdapter da = new OleDbDataAdapter(str, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Literal1.Text = "<h3>" + dt.Rows[0][0].ToString() + "</h3>";
        tot = dt.Rows[0][0].ToString();
        con.Close();
      
     
    }
   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Product.aspx?id=Mans Fragrances");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Checkout.aspx?tot=" +tot);
    }
}
