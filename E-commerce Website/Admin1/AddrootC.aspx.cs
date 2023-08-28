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
using System.Data;
using System.Web.Configuration;


public partial class Admin1_Default2 : System.Web.UI.Page
{
 //   SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["db"]);
    OleDbConnection cn;
    OleDbCommand cmd = new OleDbCommand();
    OleDbDataReader dr;
    int id = 0;
    string id1;




    
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        string ins = "INSERT INTO M_category(id,main_cname) VALUES('" + id1 + "','" + TextBox1.Text + "')";
        cmd = new OleDbCommand(ins, cn);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Main Category Inserted Successfully !!')</script>");

        //TextBox1.Text = "";
        TextBox1.Text = "";

        cn.Close();
        GridView1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        cn = new OleDbConnection(x);
        cn.Open();
        cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(id)  FROM M_category ";
        dr = cmd.ExecuteReader();

       
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;
        id1 = id.ToString();
        dr.Dispose();
        cn.Close();
       
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}
