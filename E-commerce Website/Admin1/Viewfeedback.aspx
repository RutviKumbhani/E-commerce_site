<%@ Page Language="C#" MasterPageFile="~/Admin1/MasterPage.master" AutoEventWireup="true" CodeFile="Viewfeedback.aspx.cs" Inherits="Admin1_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content">
     <div class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="icon_genius"></i>View Feedback</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Default.aspx">Home</a></li>						
						<li>Feedback</li>
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
                                   <table align="center">
                                    <tr>
                                        <td>
                                        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
                                           AutoGenerateColumns="False" DataKeyNames="id" GridLines="None" 
                                           CellPadding="4" ForeColor="#333333" AllowPaging="True">
                                           <RowStyle BackColor="#EFF3FB" />
                                            <Columns>
                                                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                                                    SortExpression="id" >
                                                    <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="nm" HeaderText="Name" SortExpression="nm" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="gender" HeaderText="Gender" 
                                                    SortExpression="gender" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="contact_no" HeaderText="Contect_Num" SortExpression="contact_no" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%"/>
                                                </asp:BoundField>
                                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="msg" HeaderText="msg" SortExpression="msg" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="sdate" HeaderText="sdate" SortExpression="sdate" >
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                </asp:BoundField>
                                                <asp:CommandField ButtonType="Image" 
                                                    DeleteImageUrl="~/Admin1/Buttons/more-btn_2.jpg" HeaderText="Operation" 
                                                    ShowDeleteButton="True">
                                                    <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                </asp:CommandField>
                                            </Columns>
                                            
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                            <HeaderStyle  Font-Bold="True" ForeColor="White" />
                                            <AlternatingRowStyle BackColor="White" />
                                            
                                        </asp:GridView>

                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:cn %>"
                                             SelectCommand="SELECT * FROM [Feedback]" 
                                             DeleteCommand="DELETE FROM [feedback] WHERE [id]=@id" ProviderName="<%$ ConnectionStrings:cn.ProviderName %>"></asp:SqlDataSource>


                                             


                                     
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
</asp:Content>

