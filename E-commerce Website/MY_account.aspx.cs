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
public partial class Default2 : System.Web.UI.Page
{
    OleDbConnection con;
     protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        con = new OleDbConnection(x);
        if (!IsPostBack)
        {
            if (Session["uid"] != null)
            {
                pnlviewdetail.Visible = true;
                showdata();
            }
            else
            {
                Response.Redirect("Login.aspx");
                pnlviewdetail.Visible = false;
                pnlupdate.Visible = false;
            }
            
        }
        
    }
    public void showdata()
    {
        String usernm =Convert.ToString( Session["uid"]);
       
        string cmd = "Select * from registration where unm='"+usernm+"'";
        OleDbCommand cmd1 = new OleDbCommand(cmd, con);
        OleDbDataAdapter da = new OleDbDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);       
        if (ds.Tables[0].Rows.Count > 0)
        {
           
            pnllogin.Visible = false;
            pnlviewdetail.Visible = true;
            pnlupdate.Visible = false;
            Label1.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            Label2.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            Label3.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            Label4.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            Label5.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            Label6.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            Label7.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            Label8.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
            Label9.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
            Label10.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
            //Label11.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
            Label13.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
            Label14.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();
            //Label1.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();
           
        }
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        String user = TextBox13.Text;
        String pass = TextBox14.Text;
        String s = "select * from registration where unm='" + user + "' and pass='" + pass + "'";
        OleDbDataAdapter da = new OleDbDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        String unm;

        if (ds.Tables[0].Rows.Count > 0)
        {
            unm = Convert.ToString(ds.Tables[0].Rows[0].ItemArray[10]);
            Session["uid"] = unm;
            TextBox13.Text="";
            TextBox14.Text="";
            Response.Write("<script language='javascript'>alert('you are now logged in.');</script>");
           
            pnlviewdetail.Visible = true;
            showdata();
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        String usernm = Convert.ToString(Session["uid"]);
        pnlupdate.Visible = true;
        pnlviewdetail.Visible = false;
        pnllogin.Visible = false;
        String g;
        String cmd = "Select * from registration where unm='"+usernm+"'";
        OleDbCommand cmd1 = new OleDbCommand(cmd, con);
        OleDbDataAdapter da = new OleDbDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
           TextBox1.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
           TextBox5.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
           g = ds.Tables[0].Rows[0].ItemArray[3].ToString();
           TextBox4.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
           TextBox9.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
           TextBox10.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
           TextBox11.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
           TextBox3.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
           TextBox2.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
           TextBox8.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
           //TextBox6.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
           TextBox15.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
           TextBox12.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();
            if (g == "Male")
            {
                RadioButton1.Checked = true;
            }
            else
            {
                RadioButton2.Checked = true;
            }
        }
   
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       
        String s;
        if(RadioButton1.Checked)
        {
            s="Male";
        }
        else
        {
            s="Female";
        }
        String str = "update registration set fname='" + TextBox1.Text + "',lname='" + TextBox5.Text + "',gender='" + s + "',address='" + TextBox4.Text + "',city='" + TextBox9.Text + "',state='" + TextBox10.Text + "',country='" + TextBox11.Text + "',contact_no='" + TextBox3.Text + "',email='" + TextBox2.Text + "',unm='" + TextBox8.Text + "',hint_no='" + TextBox15.Text + "',ans='" + TextBox12.Text + "' where unm='" + Convert.ToString(Session["uid"]) + "'";
        OleDbCommand c1 = new OleDbCommand(str,con);
        con.Open();
        
        c1.ExecuteNonQuery();
        showdata();
        con.Close();
        //showdata();
        pnlviewdetail.Visible = true;
        pnlupdate.Visible = false;
        
        
    }
    
}
