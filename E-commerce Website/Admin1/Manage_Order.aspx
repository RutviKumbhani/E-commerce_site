<%@ Page Language="C#" MasterPageFile="~/Admin1/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Order.aspx.cs" Inherits="Admin1_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main-content">
     <div class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i>Manage Order</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Default.aspx">Home</a></li>						
						<li><i class="fa fa-file-text-o"></i>Manage Order</li>
					</ol>
				</div>
			</div>
              <div class="row">
                  <div class="col-lg-12">
                      <div class="panel">
                          <div class="panel-heading">                          
                          </div>
                          <div class="panel-body">
                              <form class="form-horizontal" action="" style="margin-left:30%;"> 
                             
                               <table style="margin-top:1%;" align="center">
                                <tr>
                                <td>    
                                              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                  DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" 
                                                  ForeColor="#333333" GridLines="None">                                                  
                                                  <RowStyle BackColor="#E3EAEB" BorderColor="White" />
                                                  <Columns>                                                  
                                                      <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="True" 
                                                          SortExpression="id" InsertVisible="False">
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White" CssClass="upd1" Width="5%" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="cname" HeaderText="Name" 
                                                          SortExpression="cname" ReadOnly="True"  >                                                          
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />                                                          
                                                      </asp:BoundField>                                                          
                                                      <asp:TemplateField   HeaderText="Email" SortExpression="email">
                                                            <ItemTemplate>
                                                                <asp:Label ReadOnly="True" ID="Label1" runat="server" Text='<%# Bind("email") %>'></asp:Label>                                                            
                                                         </ItemTemplate>  
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />                                                    
                                                    </asp:TemplateField>
                                                      <asp:BoundField DataField="contact_no" HeaderText="Contact_no" 
                                                          SortExpression="contact_no" ReadOnly="True" >
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="address" HeaderText="Address" 
                                                          SortExpression="address" ReadOnly="True"  >                                                      
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                      </asp:BoundField>
                                                          <asp:TemplateField HeaderText="Selected Product">
                                                            <ItemTemplate>
                                                                <table width="120%" border="1">
                                                                    <tr>
                                                                    <td style="font-weight:bold;">Product Name</td>
                                                                      <td style="font-weight:bold;">Qut</td>
                                                                       <td style="font-weight:bold;">Price</td>
                                                                    </tr>
                                                                    <tr>
                                                                    <td><%# Eval("sDetail") %></td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                              <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="10%" />
                                                          </asp:TemplateField>
                                                     
                                                      <asp:TemplateField HeaderText="Total">
                                                        <ItemTemplate>
                                                            <asp:Label ID="l1" runat="server"  Text='<%# Eval("m_total") %>'></asp:Label>
                                                        </ItemTemplate>
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:TemplateField>
                                                      
                                                      <asp:BoundField  DataField="status" HeaderText="Status" SortExpression="status" >
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:BoundField>
                                                      
                                                      <asp:BoundField ReadOnly="True"  DataField="odate" HeaderText="odate" 
                                                          SortExpression="odate" >
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:BoundField>
                                                      
                                                     <asp:CommandField ButtonType="Image" HeaderText="Opration" 
                                                          DeleteImageUrl="~/Admin1/Buttons/more-btn_2.jpg" ShowDeleteButton="True" 
                                                          CancelImageUrl="~/Admin1/Buttons/more-btn.jpg" 
                                                          EditImageUrl="~/Admin1/Buttons/more-btn_3.jpg" ShowEditButton="True" 
                                                          UpdateImageUrl="~/Admin1/Buttons/more-btn_3.jpg">
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:CommandField>                                                   
                                                  </Columns>                                                 
                                                  <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                  <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                  <HeaderStyle Font-Bold="True" ForeColor="White" />
                                                  <EditRowStyle BackColor="#7C6F57" />
                                                  <AlternatingRowStyle BackColor="White" />
                                              </asp:GridView>                                              
                                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                  ConnectionString="<%$ ConnectionStrings:cn %>" 
                                                  SelectCommand="SELECT * FROM [Order1]"
                                                   DeleteCommand="DELETE FROM Order1 WHERE id=@id"
                                                   UpdateCommand="UPDATE Order1 SET status = @status where (id=@id) " OnSelecting="SqlDataSource1_Selecting" ProviderName="<%$ ConnectionStrings:cn.ProviderName %>">
                                                   <DeleteParameters>
                                                    <asp:Parameter Name="id" />
                                                   </DeleteParameters>
                                                   <UpdateParameters>
                                                    <asp:Parameter Name="status" Type="String" />
                                                   </UpdateParameters>
                                              </asp:SqlDataSource>

                                
                               </td>
                               </tr>
                               </table>
                               </form>
                               <div style="margin-top:2%;">
                                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Text="Print This Page" 
                                                      onclick="Button1_Click" /></div>
                          </div>
                      </div>                                   
                  </div>                 
              </div>   
                        
     </div>
</div>

</asp:Content>

