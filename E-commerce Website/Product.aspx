<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						    <div class="p-one simpleCart_shelfItem prd">
						    <h4 style="font-size:2em;">Product</h4>						
				      	    <table align="center" style="margin-left:4%;" width="95%;">
						     <tr>
                                <td>		
                                    	
                                    
                                   		    
						               <asp:DataList ID="DataList1" runat="server"
                                        DataKeyField="id" RepeatColumns="6" Height="700px" Width="100%" CellPadding="10"  >
                                     <ItemTemplate> 
                                     <table>                               
                                          <tr><div class="grid_1_of_4 images_1_of_4 products-info">
					                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image1") %>'  Width="150" Height="150"/>                                                                          
                                            
                                            <asp:Label ID="Label1" ForeColor="#204056" runat="server" Font-Size="1em" Text='<%# Eval("P_name") %>'></asp:Label>
					                          <h3>Rs.<asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>						
                                          </h3>
                                           
					                         <ul>
					 	                    <li>
					 	                        <a href='Product_veiw.aspx?id=<%#Eval("id")%>' class="cart">Buy Now</a>  
					                        </ul>
					                        </div>				                            				                    
				                          </tr>                                                     
                                       </table>  
                                      </ItemTemplate>
                                      
                                        </asp:DataList>                           
                                      
                                            
                                      
                                     </td>   
                                  </tr>  
                             </table>         								   
							</div>	
						</div>
						<div class="clear"> </div>
					</div>
	      </div>
</div>	      
</asp:Content>

