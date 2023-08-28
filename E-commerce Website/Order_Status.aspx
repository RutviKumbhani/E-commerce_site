<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Order_Status.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="products-grids">
	<div class="col-md-8 products-grid-left">
	     <div class="products-grid-lft">
	         <div class="product-grd">
                  <div class="p-one simpleCart_shelfItem prd">
						<h4 style="font-size:1.5em;">Order Status</h4>						
				      	    <table  align="center" >
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
                                                          <asp:TemplateField HeaderText="Selected Product">
                                                            <ItemTemplate>
                                                                <table width="100%" border="1">
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
                                                         >
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
                                                   DeleteCommand="DELETE FROM Order1 WHERE ([id]=@id)" ProviderName="<%$ ConnectionStrings:cn.ProviderName %>">
                                                   <DeleteParameters>
                                                        <asp:Parameter Name="id" />
                                                   </DeleteParameters>
                                                  
                                              </asp:SqlDataSource>


                                     
                                                 </td>
							    </tr>
			                </table>
			               <div style="margin-top:2%;"> <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --%>
                               <asp:Button ID="Button1" BackColor="#204056" 
                                ForeColor="White" Width="200px" runat="server" Text="Print This Page"  OnClick="Button2_Click"/>
                          
                            </div>		   
		            </div>	
	            </div>
            <div class="clear"> </div>
        </div>
	 </div>
</div>
</asp:Content>

