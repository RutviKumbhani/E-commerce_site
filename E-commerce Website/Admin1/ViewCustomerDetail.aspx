<%@ Page Language="C#" MasterPageFile="~/Admin1/MasterPage.master" AutoEventWireup="true" CodeFile="ViewCustomerDetail.aspx.cs" Inherits="Admin1_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content">
     <div class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="icon_genius"></i>View Customer Details</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Default.aspx">Home</a></li>						
						<li>Customer Details</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <div class="panel">
                          <div class="panel-heading"> 
                          <i class="fa fa-file-text-o"></i>
                          Form                         
                          </div>
                          <div class="panel-body">
                              <form class="form-horizontal" action=""> 
                                   <div class="form-group">                                  
                                   <table>
                                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                           AutoGenerateColumns="False" DataKeyNames="id" 
                                           onselectedindexchanged="GridView1_SelectedIndexChanged" GridLines="None" 
                                           CellPadding="3" ForeColor="#333333">
                                           <RowStyle BackColor="#EFF3FB"/>
                                        <Columns>
                                            <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="True" 
                                                SortExpression="id" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%"/>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="fname" HeaderText="F_name" SortExpression="fname" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="lname" HeaderText="L_name" SortExpression="lname" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="gender" HeaderText="Gender" 
                                                SortExpression="gender" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="address" HeaderText="Address" 
                                                SortExpression="address" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="country" HeaderText="Country" 
                                                SortExpression="country" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="contact_no" HeaderText="Mobile_no" 
                                                SortExpression="contact_no" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField  ControlStyle-Width="30" DataField="email" HeaderText="Email" SortExpression="email" >
                                                <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="unm" HeaderText="Username" 
                                                SortExpression="username" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="pass" HeaderText="Password" 
                                                SortExpression="password" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="hint_no" HeaderText="Hint_no" 
                                                SortExpression="hint_no" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%"/>
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ans" HeaderText="Answer" SortExpression="ans" >
                                            
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:BoundField>
                                            
                                            <asp:CommandField ButtonType="Image" HeaderText="Opration" 
                                                DeleteImageUrl="~/Admin1/Buttons/more-btn_2.jpg" 
                                                ShowDeleteButton="True" >
                                                <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                            </asp:CommandField>
                                        </Columns>
                                           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                           <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                           <HeaderStyle Font-Bold="True" ForeColor="White" />
                                           <EditRowStyle BackColor="#2461BF" />
                                           <AlternatingRowStyle BackColor="White" />
                                    </asp:GridView>
                                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                  ConnectionString="<%$ ConnectionStrings:cn %>" 
                                           SelectCommand="SELECT * FROM [registration]"
                                            DeleteCommand="DELETE FROM [registration] WHERE [id]=@id" ProviderName="<%$ ConnectionStrings:cn.ProviderName %>"></asp:SqlDataSource>
                                  </table>
                                   </div>
                               </form>
                          </div>
                      </div>                                   
                  </div>                 
              </div>   
               </div>
</div>
</asp:Content>

