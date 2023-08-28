<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						    <div class="p-one simpleCart_shelfItem prd">
						    <h4 style="font-size:1.5em;">View Cart</h4>						
				      	    <table style=" margin-left:6%;" >
						    <tr><td>
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                onselectedindexchanged="GridView1_SelectedIndexChanged" Height="96px" 
                                Width="125%" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                                 DataKeyNames="id" GridLines="none" BackColor="White" 
                                    BorderColor="#999999" BorderStyle="Ridge" BorderWidth="1px">
                                 <Columns>                                
                                     <asp:ImageField DataImageUrlField="images" ControlStyle-CssClass="img-responsive" 
                                     HeaderText="Images">
                                         <ControlStyle Height="100px" Width="100px" />
                                         <HeaderStyle BackColor="Black" />
                                     </asp:ImageField>
                                    <asp:TemplateField HeaderText="Product name" SortExpression="pname" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="pname" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                        <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>                                 
                                     <asp:TemplateField HeaderText="Price" SortExpression="price" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="price" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                    <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Quantity" SortExpression="qui" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="qui" runat="server" Text='<%# Eval("qui") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                    <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>   
                                    <asp:TemplateField HeaderText="Sub Total" SortExpression="total" HeaderStyle-BackColor="Black">
                                        <ItemTemplate>
                                            <asp:Label ID="total" runat="server" Text='<%# Eval("total") %>'></asp:Label>
                                        </ItemTemplate>                                       
                                    <HeaderStyle BackColor="Black"></HeaderStyle>
                                    </asp:TemplateField>
                                   
                                  
                                     <asp:CommandField ButtonType="Image" 
                                         DeleteImageUrl="~/Admin1/Buttons/more-btn_2.jpg" ShowDeleteButton="True">
                                         <HeaderStyle BackColor="Black" Width="30" />
                                     </asp:CommandField>
                                     
                                     </Columns>
                                    <FooterStyle BackColor="#CCCCCC" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                    <AlternatingRowStyle BackColor="#CCCCCC" CssClass="G1" />
                            </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:cn %>" 
                                    SelectCommand="SELECT * FROM [ADDTOCART1] WHERE ([unm] = @uid)"
                                     DeleteCommand="DELETE FROM ADDTOCART1 where id=@id" ProviderName="<%$ ConnectionStrings:cn.ProviderName %>">
                             <SelectParameters>                                       
                                        <asp:SessionParameter Name="uid" SessionField="uid" Type="String" />
                                    </SelectParameters>
                                 <DeleteParameters>
                                   <asp:Parameter Name="id" Type="Int32" />
                                 </DeleteParameters>
                                    
                                </asp:SqlDataSource>

                              

                             </td>
							</tr>

							<tr>
							<td style="float:left; margin-left:60%;"><h3>Total Amount:</h3>
							    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
							</td>
							</tr>						
                              
							</table>						
                             <div>
                                    <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --%>
                                 <asp:Button ID="Button1" BackColor="#204056" 
                                ForeColor="White" Width="100px" runat="server" Text="Shop More" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" BackColor="#204056" 
                                ForeColor="White" Width="100px" runat="server" Text="Checkout"  OnClick="Button2_Click"/>
                            
							 </div>      								   
							</div>	
						</div>
						<div class="clearfix"> </div>
				    </div>
	            </div>
  </div>

</asp:Content>

