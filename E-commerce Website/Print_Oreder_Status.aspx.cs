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

public partial class Print_Oreder_Status : System.Web.UI.Page
{
    OleDbConnection cn;
    protected void Page_Load(object sender, EventArgs e)
    {
         String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        cn = new OleDbConnection(x);
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        string strscript = "<script>" +
                                          "window.print()" +
                                          "</script>";
        Page.RegisterClientScriptBlock("ImageButton1_Click", strscript);
    }
}
