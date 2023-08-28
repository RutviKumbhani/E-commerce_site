<%@ Page Language="C#" MasterPageFile="~/Admin1/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin1_Default" Title="Home | Gift Selling" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main-content">
          <div class="wrapper">            
              <!--overview start-->
			  <div class="row">
				<div class="col-lg-12">
				
					<h3 class="page-header"><i class="fa fa-home"></i>Home</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Default.aspx">Home</a></li>		
                        <li><i class="fa fa-user-md"></i><a href="Profile.aspx">Profile</a></li>												  	
					</ol>
				</div>
			</div>
             <div class="row">
                  <div class="col-lg-12">
                      <div class="panel">
                          <div class="panel-heading">
                             
                          
                          </div>
                          <div class="panel-body">
                          <form action="">
                              <div class="form">
                                    <h2>Wel-come....</h2><asp:Label ID="t1" Text='<% # Eval("Login_ID") %>' runat="server" ></asp:Label>
                               </div>
                          </form>     
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                  ConnectionString="<%$ ConnectionStrings:cn %>" 
                                  SelectCommand="SELECT * FROM [tblAdmin]" 
                                  onselecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
                          </div>
                      </div>
                  </div>
              </div>    
          </div>
     </div>
</asp:Content>

