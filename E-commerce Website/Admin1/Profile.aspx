<%@ Page Language="C#" MasterPageFile="~/Admin1/MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Admin1_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content">
          <div class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-user-md"></i> Profile</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Default.aspx">Home</a></li>
						<li><i class="fa fa-user-md"></i>Profile</li>
					</ol>
				</div>
			</div>
              <div class="row">
                <!-- profile-widget -->
                <div class="col-lg-12">
                    <div class="profile-widget profile-widget-info">
                          <div class="panel-body">
                            <div class="col-lg-2 col-sm-2">
                              <h4>Rutvi Kumbhani And Bhavya Virani</h4>               
                              <div class="follow-ava">
                                  <img src="img/profile-widget-avatar.jpg" alt=""/>
                              </div>
                              <h6>Administrator</h6>
                            </div>
                            <div class="col-lg-4 col-sm-4 follow-info">
                                <p>Hello I’m Rutvi Kumbhani, a leading expert in interactive and creative project.</p>
                                <p><i class="fa fa-facebook"> Rutvi Kumbhani</i></p>
								<p><i class="fa fa-google"> rutvikumbhani2410@gmail.com</i></p>
                         
                            </div>
                            
                               <div class="col-lg-4 col-sm-4 follow-info">
                                <p>Hello I’m Bhavya Virani, a leading expert in interactive and creative project.</p>
                                <p><i class="fa fa-facebook"> Bhavya Virani</i></p>
								<p><i class="fa fa-google"> bhavyavirani5@gmail.com</i></p>
                                
                            </div>
                           
                          </div>
                    </div>
                </div>
              </div>
              <!-- page start-->
              <div class="row">
                 <div class="col-lg-12">
                    <div class="panel">
                          <div class="panel-heading tab-bg-info">
                              <ul class="nav nav-tabs">
                                  <li class="active">
                                      <a data-toggle="tab" href="#recent-activity">
                                          <i class="icon-home"></i>
                                          Profile
                                      </a>
                                  </li>                                 
                                  <li class="">
                                      <a data-toggle="tab" href="#edit-profile">                                          
                                          Edit Profile
                                      </a>
                                  </li>
                              </ul>
                          </div>
                          <div class="panel-body">
                              <div class="tab-content">
                              <!-- profile -->
                                  <div id="recent-activity" class="tab-pane active">
                                      <div class="profile-activity">                                          
                                            <div id="profile" class="tab-pane">
                                    <div class="panel">
                                      <div class="bio-graph-heading">
                                                Hello I’m Rutvi Kumbhani & Bhavya Virani, a leading expert in interactive and creative Poject. My degree continue Bachelor of Computer Application in Saurastra University.
                                      </div>
                                      <div class="panel-body bio-graph-info">
                                      </div>
                                    </div>
                                      <div>
                                          <div class="row">                                              
                                          </div>
                                      </div>
                                  </div>  

                                      </div>
                                  </div>                                  
                                  <!-- edit-profile -->
                                  <div id="edit-profile" class="tab-pane">
                                    <div class="panel">                                          
                                          <div class="panel-body bio-graph-info">
                                              <h1> Profile Info</h1>
                                              <form class="form-horizontal" action="">                                                  
                                                  <div class="form-group">
                                                  
                                                    <table border="">
                                                        <tr>
                                                            <td  align="right">Frist Name:</td>                                                           
                                                            <td>  <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox></td>
                                                        </tr>
                                                         <tr>
                                                            <td  align="right">Last Name:</td>                                                           
                                                            <td>  <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox></td>
                                                        </tr>
                                                         <tr>
                                                            <td  align="right">Brith day:</td>                                                           
                                                            <td>  <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox></td>
                                                        </tr>
                                                         <tr>
                                                            <td  align="right">City:</td>                                                           
                                                            <td>  <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox></td>
                                                        </tr>
                                                         <tr>
                                                            <td align="right">Country:</td>                                                           
                                                            <td>  <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox></td>
                                                        </tr>
                                                         <tr>
                                                            <td  align="right">Email:</td>                                                           
                                                            <td>  <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox></td>
                                                        </tr>
                                                         <tr>
                                                            <td  align="right">Mobile no:</td>                                                           
                                                            <td>  <asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox></td>
                                                        </tr>
                                                         <tr>
                                                            <td  align="right">Phone no:</td>                                                           
                                                            <td>  <asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox></td>
                                                        </tr>
                                                        <tr>
                                                            <td  align="center" colspan="2">                                                            
                                                             <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Submit" />
                                                            
                                                             <asp:Button ID="Button2" runat="server" class="btn btn-primary" Text="Reset" />
                                                            </td>                                                           
                                                       </tr>
                                                    </table>                                                      
                                                  </div>                                                  
                                                  </form>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </div>
                 </div>
              <!-- page end-->
          </div>
      </div>
      </div>
</div>      
</asp:Content>

