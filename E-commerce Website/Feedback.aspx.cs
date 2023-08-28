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

    OleDbConnection cn;
    OleDbCommand cmd;
    OleDbDataReader dr;
    int id = 0;
    string id1;
   
        
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        cn = new OleDbConnection(x);
       
        
       
        if (!IsPostBack)
        {
            TextBox1.Focus();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }
        cn.Open();
        cmd = cn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(id)  FROM Feedback";
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
    protected void Button1_Click(object sender, EventArgs e)
    {

        //SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["DB"].ConnectionString);

        String gender = "";
        if (RadioButton1.Checked)
        {
            gender = "Male";
        }
        else
        {
            gender = "Female";
        }
        String name = TextBox1.Text;
        String contact = TextBox3.Text;
        String email1 = TextBox2.Text;
        String msg = TextBox4.Text;
        String sdate = DateTime.Now.ToString();
        String s = "insert into Feedback values(" + id1 + ",'" + name + "','" + gender + "'," + contact + ",'" + email1 + "','" + msg + "','" + sdate + "')";
        //String s = "insert into Feedback values(" + id1 + ",'" + name + "','" + gender + "'," + contact + ",'" + email + "','"+msg+"','" + sdate + "')";

        cn.Open();
        cmd = new OleDbCommand(s, cn);
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            Response.Write("<script>alert('Thenks for your review...!')</script>");
        }
        else
        {
            Response.Write("<script>alert('Error :- Data is not Inserted...!')</script>");
        }
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        cn.Close();

    }


protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
{

}
protected void Button2_Click(object sender, EventArgs e)
{
    TextBox1.Text = "";
    TextBox2.Text = "";
    TextBox3.Text = "";
    TextBox4.Text = "";
}
}
