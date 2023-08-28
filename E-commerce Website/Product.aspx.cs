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
    OleDbDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        con = new OleDbConnection(x);

        String sa = Request.QueryString["id"];
        //con = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);
        if (!IsPostBack)
        {

            DataList1.DataSource = BindRepeater(sa);
            DataList1.DataBind();
        }

        Console.Write(sa);
        // SqlDataSource1.SelectCommand = "SELECT [id],[P_name],[prise],[des],[image] FROM [product] WHERE ([s_name] ='" + sa + "')";

    }
    private DataSet BindRepeater(string scat)
    {

        con.Open();
        DataSet ds = new DataSet();

        String sel = "SELECT * FROM [product]";
        if (scat != null)
        {
            sel = "SELECT * FROM [product] where s_name='" + scat + "' ";
        }


        da = new OleDbDataAdapter(sel, con);
        DataTable mainc = new DataTable("tbl0");
        da.Fill(mainc);
        ds.Tables.Add(mainc);
        return ds;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
  
}