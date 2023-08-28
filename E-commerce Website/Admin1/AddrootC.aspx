<%@ Page Language="C#" MasterPageFile="~/Admin1/MasterPage.master" AutoEventWireup="true" CodeFile="AddrootC.aspx.cs" Inherits="Admin1_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main-content">
     <div class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="fa fa-file-text-o"></i>Add Root Category</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Default.aspx">Home</a></li>						
						<li><i class="fa fa-file-text-o"></i>Add Root Category</li>
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
                              <table align="center">
                                   <tr>
                                   <td class="form-group">
                                     Add Root Category
                                   </td>
                                   </tr>                                 
                                  <tr>
                                  <td>                                                              
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="183px"></asp:TextBox>
                                  </td>
                                  </tr>
                                  <tr>
                                  <td align="center" style=" padding-top:2%;">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" 
                                          onclick="Button1_Click" />
                                </td>
                               </tr>
                               </table>
                               <table style="margin-top:1%;" align="center">
                                <tr>
                                <td>    
                                              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                  DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" 
                                                  ForeColor="#333333" GridLines="None">
                                                  <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                  <Columns>
                                                      <asp:BoundField DataField="id" HeaderText="Category Id" ReadOnly="True" 
                                                          SortExpression="id" >
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="main_cname" HeaderText="Category Name" 
                                                          SortExpression="main_cname" >
                                                          
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                      </asp:BoundField>
                                                          
                                                      <asp:CommandField ButtonType="Image" HeaderText="Opration" 
                                                          DeleteImageUrl="~/Admin1/Buttons/more-btn_2.jpg" ShowDeleteButton="True" 
                                                          CancelImageUrl="~/Admin1/Buttons/more-btn.jpg" 
                                                          EditImageUrl="~/Admin1/Buttons/more-btn_3.jpg" ShowEditButton="True" 
                                                          UpdateImageUrl="~/Admin1/Buttons/more-btn_3.jpg">
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:CommandField>
                                                      
                                                  </Columns>
                                                  <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                  <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                  <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                  <HeaderStyle Font-Bold="True" ForeColor="White"  />
                                                  <EditRowStyle BackColor="#999999" />
                                                  <AlternatingRowStyle BackColor="White" ForeColor="#202020" />
                                              </asp:GridView>
                                              
                                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                  ConnectionString="<%$ ConnectionStrings:cn %>" 
                                                  SelectCommand="SELECT * FROM [M_category]" 
                                                 UpdateCommand="UPDATE M_category SET main_cname = @main_cname WHERE (id=@id)"  
                                                   DeleteCommand="DELETE FROM [M_category] WHERE [id]=@id "
                                                  ProviderName="<%$ ConnectionStrings:cn.ProviderName %>">
                                                  <DeleteParameters>
                                                      <asp:Parameter Name="id" />
                                                       <asp:Parameter Name="main_cname" />
                                                  </DeleteParameters>
                                              </asp:SqlDataSource>




                            
                               </td>
                               </tr>
                               </table>
                               </form>
                          </div>
                      </div>                                   
                  </div>                 
              </div>   
                        
     </div>
</div>

</asp:Content>

