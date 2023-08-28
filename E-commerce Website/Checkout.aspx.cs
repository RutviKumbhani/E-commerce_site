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
using System.Data;
using System.Web.Configuration;
public partial class Default2 : System.Web.UI.Page
{
    OleDbConnection con;
    OleDbDataAdapter adp;
    //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

        String x1 = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        con = new OleDbConnection(x1);


        detail();
        Literal1.Text = "<h3>" + Request.QueryString["tot"] + "</h3>";
        if (!IsPostBack)
        {
            con.Open();
            String sid = Session["uid"].ToString();
            Session.Timeout = 60;
            String s1 = "select * from ADDTOCART1 where unm='" + sid + "'";
            // SqlDataAdapter da1 = new SqlDataAdapter(s1, con);
            OleDbDataAdapter da1 = new OleDbDataAdapter(s1, con);
            DataTable dt = new DataTable();
            da1.Fill(dt);

            int tot_row = Int32.Parse(dt.Rows.Count.ToString());
            int x = 0;

            while (x < tot_row)
            {
                Literal2.Text = Literal2.Text + "<tr><td>" + dt.Rows[x]["pname"] + "</td><td>" + dt.Rows[x]["qui"] + "</td><td>" + dt.Rows[x]["total"] + "</td></tr>";

                x++;
            }
            con.Close();
        }
    }
    protected void detail()
    {
        if (Session["uid"] != null)
        {
            con.Open();
            String nm = Session["uid"].ToString();
            String ss = "select * from registration where unm='" + nm + "'";
            OleDbDataAdapter da = new   OleDbDataAdapter(ss, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            TextBox1.Text = dt.Rows[0][10].ToString();
            TextBox2.Text = dt.Rows[0][9].ToString();
            TextBox3.Text = dt.Rows[0][8].ToString();
            TextBox4.Text = dt.Rows[0][4].ToString();
            con.Close();
        }
        else
        {
            Response.Redirect("viewcart.aspx");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        adp = new OleDbDataAdapter("select max(id) from Order1", con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        int ano;

        if (ds.Tables[0].Rows[0][0].ToString().Equals(""))
        {
            ano = 1;
        }
        else
        {
            ano = Int32.Parse(ds.Tables[0].Rows[0][0].ToString());
            ano = ano + 1;
        }
        String sss = Session["uid"].ToString();
        if (sss != null)
        {
          
            con.Open();
            String dat = DateTime.Now.ToString();
            String status = "Pending";
            String ss = "insert into Order1 values("+ano+",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + Literal2.Text + "','" + Literal1.Text + "','" + status + "','" + dat + "')";
            OleDbDataAdapter da = new OleDbDataAdapter(ss, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            Response.Redirect("Info.aspx");
            con.Close();
        
        }
        else
        {
            Response.Redirect("login.aspx");
        }
        print();
        delete1();
     
       
       
    }
    protected void delete1()
    {
        con.Open();
        OleDbDataAdapter da = new OleDbDataAdapter("delete from ADDTOCART1", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        
    }
    protected void print()
    {
        con.Open();
        OleDbDataAdapter da = new OleDbDataAdapter("select * from order_detail", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        String n = dt.Rows[0][0].ToString();
        Response.Write("<script>alert('OrderId :')</script>");
        con.Close();
    }
}
