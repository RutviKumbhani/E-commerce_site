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
    OleDbDataReader dr;
    int id = 0;
    String id1;
    protected void Page_Load(object sender, EventArgs e)
    {
        String x = WebConfigurationManager.ConnectionStrings["cn"].ConnectionString.ToString();
        con = new OleDbConnection(x);
        if (!IsPostBack)
        {
       
            TextBox1.Focus();
        }
        con.Open();
        cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT max(id)  FROM registration";



        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            id = dr[0].ToString().Length == 0 ? 0 : int.Parse(dr[0].ToString());

        }
        id = id + 1;
        id1 = id.ToString();
        dr.Dispose();

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String gender = "";
        if (RadioButton1.Checked)
        {
            gender = "Male";
        }
        else
        {
            gender = "Female";
        }
        String fname = TextBox1.Text;
        String lname = TextBox5.Text;
        //String bod = TextBox13.Text;
        String address = TextBox4.Text;
        String city = TextBox9.Text;
        String state=TextBox10.Text;
        String country=TextBox11.Text;
        String contact_no = TextBox3.Text;
        String email = TextBox2.Text;
        String username = TextBox8.Text;
        String password = TextBox6.Text;
        String h_qus = txtques.Text;
        String ans = TextBox12.Text;
        String sdate =DateTime.Now.ToString();
        con.Open();
        cmd = new OleDbCommand("Select * From registration Where unm='" + username + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            dr.Close();
            con.Close();
            
            Response.Write("<script>alert('User Name Already Exist....!')</script>");
            TextBox1.Focus();
        }
        else
        {
            dr.Close();
            String s = "insert into registration values('" + id1 + "','" + fname + "','" + lname + "','" + gender + "','" + address + "','" + city + "','" + state + "','" + country + "','" + contact_no + "','" + email + "','" + username + "','" + password + "','" + h_qus + "','" + ans + "','" + sdate + "')";
            cmd = new OleDbCommand(s, con);
            int a = cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox11.Focus();
    }
}
