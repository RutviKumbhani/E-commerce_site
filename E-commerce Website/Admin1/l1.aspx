<%@ Page Language="C#" AutoEventWireup="true" CodeFile="l1.aspx.cs" Inherits="Admin1_l1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
   
      <title>Login | Om Sai Fashion</title>    
    <link href="css/bootstrap-theme.css" rel="stylesheet"/>  
    <link href="css/font-awesome.min.css" rel="stylesheet" />   
    <link href="css/style.css" rel="stylesheet" />   
	
	<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet"/>
 
  </head>
  <body class="login-img3-body"> 
      <!--main content start-->
      <div id="main-content">
          <div class="wrapper">		 
              <!-- Basic Forms & Horizontal Forms-->              
              <div class="row">                  
                  <div class="col-lg-6">                   
                                     <a href="#myModal-2" data-toggle="modal" class="btn  btn-danger">
                                  <asp:Image ID="image" runat="server" ImageUrl="~/Admin1/images/admin2.jpg" Width="150" Height="150" />
                              </a>               
                              <div hidden="true"  id="myModal-2" class="modal fade">
                                  <div class="modal-dialog">
                                      <div class="modal-content">
                                          <div class="modal-header">
                                              
                                              <h4 class="modal-title">
                                              <marquee align="middle" scrollamount="2" scrolldelay="2" direction="right" vspace="3" behavior="alternate">Admin Login</marquee>
                                              </h4>
                                          </div>
                                          <div class="modal-body">
                                              <form class="form-inline" action="" runat="server">
                                                  <table class="form-group" align="center">
                                                  <tr><td style="float:left; margin-left:25%; margin-bottom:5px;">
                                                      
                                                      <asp:TextBox ID="TextBox1" ForeColor="Black" runat="server" class="form-control sm-input" placeholder="Enter username" ></asp:TextBox>
                                                      </td></tr>
                                                       <tr><td style="float:left; margin-left:25%; margin-bottom:5px;">
                                                      <asp:TextBox ID="TextBox2" TextMode="Password" ForeColor="Black" runat="server" class="form-control sm-input" placeholder="Enter password" ></asp:TextBox>
                                                      </td></tr>
                                                    <tr>
                                                    <td style="float:left; margin-left:50%; margin-bottom:5px;">
                                                     <asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-success"  onclick="Button1_Click"/></td>
                                                    </tr>                                                
                                                    </table>
                                              </form>
                                          </div>
                                          
                                      </div>
                                  </div>
                              </div>                      
                  </div>
              </div>             
          </div>
      </div>   

    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>   
    <script src="js/form-component.js" type="text/javascript"></script>
        <script src="js/scripts.js" type="text/javascript"></script> 
 </body>
</html>
