<%@ Page Language="C#" MasterPageFile="~/Admin1/MasterPage.master" AutoEventWireup="true" CodeFile="AddSubC.aspx.cs" Inherits="Admin1_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main-content">
     <div class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="icon_genius"></i>Add Sub Category</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Default.aspx">Home</a></li>						
						<li><i class="icon_genius"></i>Add Sub Category</li>
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
                                        <tr><td>Select Root Category Name</td></tr>
                                        <tr>
                                        <td>
                                            <asp:DropDownList ID="Mid" runat="server" CssClass="form-control" 
                                            onselectedindexchanged="Mid_SelectedIndexChanged">
                                            </asp:DropDownList>
                                        </td>
                                        </tr>
                                       <tr><td>Sub Category Name</td></tr>
                                        <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>                                                                               
                                        <tr>
                                        <td align="center" colspan="2" style="padding-top:2%;"> 
                                        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary" 
                                                onclick="Button1_Click"/>
                                        <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn btn-primary" 
                                                onclick="Button2_Click"/>                                        
                                        </td>
                                        </tr>
                                    </table>                                   
                                    <table style="margin-top:1%;" align="center">
                                        <tr>
                                        <td>
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                CellPadding="4" DataKeyNames="S_id" DataSourceID="SqlDataSource1" 
                                                GridLines="None" AllowPaging="True" PageSize="5" ForeColor="#333333">
                                               <RowStyle BackColor="#E3EAEB" />
                                                <Columns>
                                                                                                      
                                                    <asp:BoundField HeaderText="Root Category" DataField="M_Cname" ReadOnly="true">
                                                        <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                    </asp:BoundField>
                                                    
                                                    <asp:BoundField DataField="S_id" HeaderText="Sub CId" ReadOnly="True" 
                                                        SortExpression="S_id">
                                                        <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="S_Cname" HeaderText="Sub Category" 
                                                        SortExpression="S_Cname">
                                                        <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%"/>
                                                    </asp:BoundField>                                                    
                                                    <asp:CommandField ButtonType="Image"
                                                        DeleteImageUrl="~/Admin1/Buttons/more-btn_2.jpg" HeaderText="Opration" 
                                                        ShowDeleteButton="True" CancelImageUrl="~/Admin1/Buttons/more-btn.jpg" 
                                                        EditImageUrl="~/Admin1/Buttons/more-btn_3.jpg" ShowEditButton="True" 
                                                        UpdateImageUrl="~/Admin1/Buttons/more-btn_3.jpg">
                                                        <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                    </asp:CommandField>
                                                </Columns>
                                                <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
                                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle Font-Bold="True" ForeColor="White"  />
                                                <EditRowStyle BackColor="#7C6F57" />
                                                <AlternatingRowStyle BackColor="White" ForeColor="#202020"/>
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:cn %>" 
                                                SelectCommand="SELECT * FROM [Sub_category1]"
                                                 UpdateCommand="UPDATE [Sub_category1] SET S_Cname = @S_Cname where S_id=@S_id "
                                                 DeleteCommand="DELETE FROM [Sub_category1] WHERE [S_id]=@S_id "
                                                ProviderName="<%$ ConnectionStrings:cn.ProviderName %>">
                                                <UpdateParameters>
                                                    <asp:Parameter Name="S_id" />
                                                </UpdateParameters>
                                                 <DeleteParameters>
                                                      <asp:Parameter Name="S_id" />
                                                       <asp:Parameter Name="S_Cname" />
                                                  </DeleteParameters>
                                                  </asp:SqlDataSource>


                                            
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

