using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
using System.Web.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    OleDbConnection cn;
    OleDbCommand cmd;
    OleDbDataAdapter da;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        cn = new OleDbConnection(x);
        
         if (!IsPostBack)
         {
             if (Session["uid"] == null)
             {
                // lblUser.Text = "";
                 LinkButton1.Visible = false;
                 LinkButton2.Visible = false;
                 LinkButton3.Visible = false;
                 LinkButton4.Visible = false;
                 
             }
             else
             {
                 LinkButton1.Visible = true;
                 LinkButton2.Visible = true;
                 LinkButton3.Visible = true;
                 LinkButton4.Visible = true;
                 //LinkButton1.Text = "LOGOUT";
             }
         }
        // Label1.Text = DateTime.Now.ToString();
         bindData();
         binddata1();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("Login.aspx");
           
        }
        else
        {
            Session.Remove("uid");
            Response.Redirect("Login.aspx");
        }
        
    }

    private void bindData()
    {
        //cn.Open();
        //DataSet ds = new DataSet();
        //String sel = "SELECT * FROM M_category WHERE main_cname IN (SELECT M_Cname FROM Sub_category1)";
        //da = new OleDbDataAdapter(sel, cn);
        //DataTable mainc = new DataTable("tbl0");
        //da.Fill(mainc);
        //ds.Tables.Add(mainc);


        //String sel1 = "SELECT p.M_Cname,p.S_id,p.S_Cname FROM Sub_category1 p";
        //da = new OleDbDataAdapter(sel1, cn);
        //DataTable subc = new DataTable("tbl1");
        //da.Fill(subc);
        //ds.Tables.Add(subc);


        //ds.Relations.Add(new DataRelation("CategoryRelation", ds.Tables[0].Columns["main_cname"], ds.Tables[1].Columns["M_Cname"]));
        //Repeater1.DataSource = ds.Tables[0];
        //Repeater1.DataBind();


        //cn.Close();







    }
    private void binddata1()
    {
        cn.Open();
        DataSet ds = new DataSet();
        String sel = "SELECT * FROM M_category WHERE main_cname IN (SELECT M_Cname FROM Sub_category1)";
        da = new OleDbDataAdapter(sel, cn);
        DataTable mainc = new DataTable("tbl0");
        da.Fill(mainc);
        ds.Tables.Add(mainc);


        String sel1 = "SELECT p.M_Cname,p.S_id,p.S_Cname FROM Sub_category1 p";
        da = new OleDbDataAdapter(sel1, cn);
        DataTable subc = new DataTable("tbl1");
        da.Fill(subc);
        ds.Tables.Add(subc);


        ds.Relations.Add(new DataRelation("CategoryRelation1", ds.Tables[0].Columns["main_cname"], ds.Tables[1].Columns["M_Cname"]));
        Repeater3.DataSource = ds.Tables[0];
        Repeater3.DataBind();


        cn.Close();
    }
    protected void r2_data(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item ||
            e.Item.ItemType == ListItemType.AlternatingItem)
        {
            DataRowView drv = e.Item.DataItem as DataRowView;
            Repeater r4 = e.Item.FindControl("r4") as Repeater;
            r4.DataSource = drv.CreateChildView("CategoryRelation1");
            r4.DataBind();
        }
    }

    protected void r1_data(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item ||
            e.Item.ItemType == ListItemType.AlternatingItem)
        {
            DataRowView drv = e.Item.DataItem as DataRowView;
            Repeater r2 = e.Item.FindControl("r2") as Repeater;
            r2.DataSource = drv.CreateChildView("CategoryRelation");
            r2.DataBind();
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Write("<script>alert('Your cart is empty...!')</script>");
      
            
        }
        else
        {           
            Response.Redirect("ViewCart.aspx");
        }
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("Order_Status.aspx");
        }
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {        
        
            Response.Redirect("MY_account.aspx");
       
    }
    protected void l5_Click(object sender, EventArgs e)
    {
        Response.Redirect("MY_account.aspx");
    }
    protected void l6_Click(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Write("<script>alert('Your cart is empty...!')</script>");

        }
        else
        {
            Response.Redirect("ViewCart.aspx");
        }
    }
    protected void l7_Click(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Redirect("Order_Status.aspx");
        }
    }
    protected void l4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Feedback.aspx");
    }
}
