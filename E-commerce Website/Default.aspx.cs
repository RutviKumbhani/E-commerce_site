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
public partial class _Default : System.Web.UI.Page
{
   // SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
    OleDbConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
     /*   if (!IsPostBack)
        {
            
               
                cart();
       }*/
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        con = new OleDbConnection(x);
       
    }
    protected void cart()
    {
       /* con.Open();
        String n =Session["uid"].ToString();
        SqlDataAdapter da = new SqlDataAdapter("delete from ADDTOCART1 where unm='" + n + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();*/

    }
}
