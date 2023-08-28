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
    //SqlConnection cn = new SqlConnection(ConfigurationManager.AppSettings["db"]);
    OleDbCommand cmd = new OleDbCommand();
    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbDataReader dr;
    int id = 0;
    string id1;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        cn = new OleDbConnection(x);
        cn.Open();

        // TextBox2.Focus();
        string sel = "select * from Sub_category1";
        da = new OleDbDataAdapter(sel, cn);
        da.Fill(ds, "Sub_category1");
        dt = ds.Tables["Sub_category1"];
        if (!IsPostBack)
        {
            Mid.DataSource = dt;
            Mid.DataTextField = "S_Cname";
            Mid.DataBind();

        }



        //auto generate Sub category id


        cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(id)  FROM product ";
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;
        id1 = id.ToString();

        Session["pid"] = id1;
        dr.Dispose();
        cn.Close();
       
        //SqlDataSource1.SelectCommand = "SELECT * FROM [Sub_category1]";






    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        string filename = "";

        if (FileUpload1.HasFile)
        {
            string fname = FileUpload1.PostedFile.FileName;
            filename = fname.Substring(fname.LastIndexOf("\\") + 1);
        }


        string filenm = "~/images/" + FileUpload1.FileName;
        string ins = "INSERT INTO product values('" + Mid.Text + "'," + id1 + ",'" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + filenm + "')";
        //string ins = "INSERT INTO product(s_name,id,P_name,price,des,stock,image)VALUES ('" + Mid.Text + "','" + id1 + "','" +TextBox1.Text+ "','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','" + filenm + "')";
        cmd = new OleDbCommand(ins, cn);
        cmd.ExecuteNonQuery();
        FileUpload1.SaveAs(MapPath("~/images/" + filename));
        Response.Write("<script>alert('Product Inserted Successfully !!')</script>");

        TextBox1.Text = "";
        TextBox3.Text = "";
        TextBox2.Text = "";
        cn.Close();
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
