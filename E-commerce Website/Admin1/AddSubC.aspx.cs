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

public partial class Admin1_Default2 : System.Web.UI.Page
{
    OleDbConnection cn;
    OleDbCommand cmd = new OleDbCommand();
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbDataReader dr;
    int id = 0;
    String id1;
    //String mid;

   
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        cn = new OleDbConnection(x);
      //  TextBox2.Focus();
        cn.Open();
        string sel = "select * from M_category";
        da = new OleDbDataAdapter(sel, cn);
        da.Fill(ds, "M_category");
        dt = ds.Tables["M_category"];
        if (!IsPostBack)
        {
            Mid.DataSource = dt;
            Mid.DataTextField = "main_cname";
            Mid.DataBind();

        }        
        
        

        //auto generate Sub category id


        cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(S_id)  FROM Sub_category1 ";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;
        id1= id.ToString();
        dr.Dispose();
        cn.Close();
        SqlDataSource1.SelectCommand = "SELECT * FROM [Sub_category1]";

    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        TextBox2.Text = "";
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

        cn.Open();

        string ins = "INSERT INTO Sub_category1(M_Cname,S_id,S_Cname)VALUES ('" + Mid.Text + "','" + id1 + "','" + TextBox2.Text + "')";
        cmd = new OleDbCommand(ins, cn);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Sub Category Inserted Successfully !!')</script>");
        TextBox2.Text = "";
        cn.Close();
        GridView1.DataBind();
    }
    protected void Mid_SelectedIndexChanged(object sender, EventArgs e)
    {
       /* foreach (DataRow dr in dt.Rows)
        {
            if (dr[1].ToString() == Mid.Text)
            {
               
                 mid = dr[0].ToString();
                break;
            }
        }
        cn.Close();*/
    }
}
