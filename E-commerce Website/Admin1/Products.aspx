<%@ Page Language="C#" MasterPageFile="~/Admin1/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Admin1_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main-content">
     <div class="wrapper">
		  <div class="row">
				<div class="col-lg-12">
					<h3 class="page-header"><i class="icon_genius"></i>Add Product</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="Default.aspx">Home</a></li>						
						<li><i class="icon_genius"></i>Add Product</li>
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
                                        <tr><td>Select Sub Category Name</td></tr>
                                        <tr>
                                        <td>
                                            <asp:DropDownList ID="Mid" runat="server" CssClass="form-control" >
                                            </asp:DropDownList>
                                        
                                        </td>
                                        </tr>                         
                                        
                                         
                                        <tr><td>Product Name</td></tr>
                                        <tr>    
                                            <td>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr><td>Price</td></tr>
                                        <tr>    
                                            <td >
                                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr><td>Discription</td></tr>
                                        <tr>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Stock</td>
                                        </tr> 
                                        <tr>   
                                            <td><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                        </tr> 
                                        <tr><td>Image</td></tr>
                                        <tr>    
                                            <td class="form-control">
                                           <asp:FileUpload ID="FileUpload1" runat="server"  />
                                            </td>
                                        </tr>                                        
                                        <tr>
                                        <td align="right" colspan="2" style="padding-top:2%;" > 
                                            <asp:Button ID="Button1" runat="server" Text="Submit" 
                                                CssClass="btn btn-primary" onclick="Button1_Click" />
                                            <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn btn-primary" />                                       
                                        </td>
                                        </tr>
                                    </table>                                   
                                    <table align="center" style="margin-top:1%;">
                                        <tr>
                                        <td>
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" 
                                                onselectedindexchanged="GridView1_SelectedIndexChanged" PageSize="5" 
                                                CellPadding="4" ForeColor="#333333" GridLines="None">
                                                <RowStyle BackColor="#E3EAEB" />
                                                <Columns>
                                                    
                                                    <asp:BoundField ReadOnly="true" DataField="s_name" HeaderText="Sub Category" 
                                                        SortExpression="s_name" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="8%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="id" HeaderText="P_Id" ReadOnly="True" 
                                                        SortExpression="id" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="P_name" HeaderText="Product Name" 
                                                        SortExpression="P_name" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="10%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%"/>
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="des" HeaderText="Discription" SortExpression="des" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                    </asp:BoundField>
                                                    <asp:BoundField DataField="stock1" HeaderText="Stock" SortExpression="stock" >
                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                    </asp:BoundField>
                                                    <asp:ImageField HeaderText="Images" SortExpression="image" 
                                                        DataImageUrlField="image1" ControlStyle-Height="100" ControlStyle-Width="100">
                                                    <ControlStyle Height="100" Width="100"></ControlStyle>

                                                        <HeaderStyle  BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                    </asp:ImageField>                                                  
                                                   
                                                    <asp:CommandField ButtonType="Image"
                                                        DeleteImageUrl="~/Admin1/Buttons/more-btn_2.jpg" HeaderText="Opration" 
                                                        ShowDeleteButton="True" CancelImageUrl="~/Admin1/Buttons/more-btn.jpg" 
                                                        EditImageUrl="~/Admin1/Buttons/more-btn_3.jpg" ShowEditButton="True" 
                                                        UpdateImageUrl="~/Admin1/Buttons/more-btn_3.jpg">
                                                        <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                    </asp:CommandField>
                                                </Columns>
                                                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                <HeaderStyle  Font-Bold="True" ForeColor="White" />
                                                <EditRowStyle BackColor="#7C6F57" />
                                                <AlternatingRowStyle BackColor="White" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:cn %>" 
                                                SelectCommand="SELECT * FROM [product]"
                                                  UpdateCommand="UPDATE product SET P_name=@P_name,price=@price,des=@des,stock1=@stock1,image1=@image1 WHERE (id=@id)"
                                                 DeleteCommand="DELETE FROM product WHERE (id = @id)" ProviderName="<%$ ConnectionStrings:cn.ProviderName %>">
                                                 <UpdateParameters>
                                                     <asp:Parameter Name="P_name" />
                                                          
                                                    <asp:Parameter Name="price" />
                                                        <asp:Parameter Name="des" />
                                                    <asp:Parameter Name="stock1" />
                                                       <asp:Parameter Name="image1" />
                                                    <asp:Parameter Name="id" />
                                               
                                                 
                                                  
                                                 </UpdateParameters>
                                                 <DeleteParameters>
                                                    <asp:Parameter Name="id" />
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

