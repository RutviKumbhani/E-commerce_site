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
public partial class Default3 : System.Web.UI.Page
{

    OleDbDataAdapter da = new OleDbDataAdapter();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    OleDbConnection con;
    OleDbCommand cmd;
    
   // SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        con = new OleDbConnection(x);
    

        if (Session["uid"] != null)
      {

          int id = int.Parse(Request.QueryString["id"].ToString());
          con.Open();
          String sel = "select * from product where id="+id+"";
          da = new OleDbDataAdapter(sel, con);
          da.Fill(ds, "product");
          dt = ds.Tables[0];
          Label2.Text=dt.Rows[0][1].ToString();
          Label4.Text = dt.Rows[0][2].ToString();
          Label6.Text = dt.Rows[0][3].ToString();
          Label8.Text = dt.Rows[0][5].ToString();
          Label10.Text = dt.Rows[0][4].ToString();
          Image1.ImageUrl = dt.Rows[0][6].ToString();
          CompareValidator1.ValueToCompare = Label8.Text;
          con.Close();

      }
     else
      {
          Response.Redirect("Login.aspx");

      }
       
    }
    protected void img1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        t3.Text = Calendar1.SelectedDate.ToShortDateString().ToString();
        Calendar1.Visible = false;
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date.CompareTo(DateTime.Today) < 0)
        {

            e.Day.IsSelectable = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         int qty, sto, ans = 0;
        qty = Convert.ToInt32(TextBox1.Text);
        sto = Convert.ToInt32(Label8.Text);
         ans= sto-qty;
        if (Session["uid"]== null)
        {
            Response.Redirect("Login.aspx");

        }
        else
        {
            con.Open();
            String unm = Session["uid"].ToString();
            String odate = DateTime.Now.ToString();
            int id = int.Parse(Request.QueryString["id"].ToString());
            
           Int32 total = Convert.ToInt32(TextBox1.Text.ToString()) * Convert.ToInt32(Label6.Text.ToString());

           string query = "insert into ADDTOCART1 values('" + unm + "','" + Label2.Text + "','" + Label4.Text + "','" + Image1.ImageUrl + "','" + Label6.Text + "','" + Label8.Text + "','" + TextBox1.Text + "','" + t3.Text + "','" + total + "')";
     
            //cmd = new SqlCommand(query,con);
            da = new OleDbDataAdapter(query, con);
            da.Fill(ds);
            cmd = new OleDbCommand("update product set stock1='" + ans + "'where id=" + id + "", con);
            cmd.ExecuteNonQuery();
            //cmd.ExecuteNonQuery();
            Response.Redirect("ViewCart.aspx");
            con.Close();


           
      
          

        }
    }
   
}
