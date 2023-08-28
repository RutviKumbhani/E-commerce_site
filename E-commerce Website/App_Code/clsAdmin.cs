using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;  

/// <summary>
/// Summary description for clsAdmin
/// </summary>
public class clsAdmin
{
	public clsAdmin()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    //To check Login details for Admin
    public int checkLogin(string userName, string Password)
    {
        //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["db"]);
        //SqlConnection conn = new SqlConnection(conString);
        String cmdString = "Select Admin_ID from tblAdmin where Login_ID='" + userName + "' and Password='" + Password + "'";  
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        conn.Open();
        int adminId=0;
        try
        {
            adminId = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }
        return adminId;
     }

    //To insert the last login Date
    public void UpdateLoginDate(int adminId, DateTime LoginDate)
    {
        //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //SqlConnection conn = new SqlConnection(conString);
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["db"]);
        string cmdString = "Update [tblAdmin] Set [LastLogin_Date]=@LastLogin_Date where Admin_ID=@Admin_ID";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        SqlParameter paramAdminID = new SqlParameter();
        paramAdminID.ParameterName = "@Admin_ID";
        paramAdminID.Value = adminId;
        paramAdminID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramAdminID);

        SqlParameter paramLoginDate = new SqlParameter();
        paramLoginDate.ParameterName = "@LastLogin_Date";
        paramLoginDate.Value = LoginDate;
        paramLoginDate.DbType = System.Data.DbType.Date; 
        cmd.Parameters.Add(paramLoginDate);

        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }

    }

    //To get all the details of Admin
    public DataTable GetAdminDetails(int adminId)
    {
        //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //SqlConnection conn = new SqlConnection(conString);
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["db"]);
        String cmdString = "Select * from tblAdmin where Admin_ID=" + adminId;
        SqlCommand cmd = new SqlCommand(cmdString, conn);
        conn.Open();
        DataTable dt=new DataTable() ;
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        return dt;
    }

    //To update details of admin
    public void UpdateAdminDetails(int adminId,string firstName,string lastName, string address, string companyName, string companyAddress, string contactNo,string faxNo)
    {
        //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //SqlConnection conn = new SqlConnection(conString);
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["db"]);
        string cmdString = "Update [tblAdmin] Set [First_Name]=@First_Name,[Last_Name]=@Last_Name,[Address]=@Address,[Company_Name]=@Company_Name,[Company_Address]=@Company_Address,[Contact_No]=@Contact_No,[Fax_No]=@Fax_No Where Admin_ID=@Admin_ID";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        SqlParameter paramAdminID = new SqlParameter();
        paramAdminID.ParameterName = "@Admin_ID";
        paramAdminID.Value = adminId;
        paramAdminID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramAdminID);

        SqlParameter paramFirstName = new SqlParameter();
        paramFirstName.ParameterName = "@First_Name";
        paramFirstName.Value = firstName; 
        paramFirstName.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramFirstName);

        SqlParameter paramLastName = new SqlParameter();
        paramLastName.ParameterName = "@Last_Name";
        paramLastName.Value = lastName;
        paramLastName.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramLastName);

        SqlParameter paramAddress = new SqlParameter();
        paramAddress.ParameterName = "@Address";
        paramAddress.Value = address ;
        paramAddress.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramAddress);

        SqlParameter paramCompanyName = new SqlParameter();
        paramCompanyName.ParameterName = "@Company_Name";
        paramCompanyName.Value = companyName;
        paramCompanyName.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramCompanyName);

        SqlParameter paramCompanyAddress = new SqlParameter();
        paramCompanyAddress.ParameterName = "@Company_Address";
        paramCompanyAddress.Value = companyAddress; 
        paramCompanyAddress.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramCompanyAddress);

        SqlParameter paramContactNo = new SqlParameter();
        paramContactNo.ParameterName = "@Contact_No";
        paramContactNo.Value = contactNo;
        paramContactNo.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramContactNo);

        SqlParameter paramFaxNo = new SqlParameter();
        paramFaxNo.ParameterName = "@Fax_No";
        paramFaxNo.Value = faxNo ;
        paramFaxNo.DbType = System.Data.DbType.String;
        cmd.Parameters.Add(paramFaxNo);

        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }
    }

    //To change password of admin
    public void ChangePassword(int adminId, string password)
    {

        //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //SqlConnection conn = new SqlConnection(conString);
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["db"]);
        string cmdString = "Update [tblAdmin] Set [Password]=@Password Where Admin_ID=@Admin_ID";
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        SqlParameter paramAdminID = new SqlParameter();
        paramAdminID.ParameterName = "@Admin_ID";
        paramAdminID.Value = adminId;
        paramAdminID.DbType = System.Data.DbType.Int32;
        cmd.Parameters.Add(paramAdminID);

        SqlParameter paramPassword = new SqlParameter();
        paramPassword.ParameterName = "@Password";
        paramPassword.Value = password; 
        paramPassword.DbType = System.Data.DbType.String ;
        cmd.Parameters.Add(paramPassword);

        conn.Open();
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            ex.Message.ToString();
        }
        finally
        {
            conn.Close();
        }

    }

    //To get last LoginDate
    public DateTime GetLastLoginDate(int adminId)
    {
        //string conString = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //SqlConnection conn = new SqlConnection(conString);
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["db"]);
        string cmdString = "Select LastLogin_Date from [tblAdmin] where Admin_ID=" + adminId ;
        SqlCommand cmd = new SqlCommand(cmdString, conn);

        conn.Open();

        DateTime dt = Convert.ToDateTime(cmd.ExecuteScalar());
        conn.Close();
        return dt;

    }
}
