<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Info.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						    <div class="p-one simpleCart_shelfItem prd">
						    					
                             <table border="0"  align="center" width="100%">
                              <tr>
                               
                                <td valign="top">
                                    <br />
                                    <br />
                                    Dear Customer <asp:Label Font-Bold="true" ID="lbluser" runat="server" />,
                                    <br /> Thank you for purchasing Gift - Internet shopping your order details are 
                                    given below, please: use this order ID to check the status of your order 
                                    delivery status.
                             
                               </td>
                               </tr>
                              <tr>
                             <td><a href="Default.aspx">Click Here To Go To The Home Page</a>
                             </td>
                             </tr>
                             <tr>
                             <td> Thank You,</td>
                             </tr>
                          
                            </table>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:cn %>" 
                                    SelectCommand="SELECT * FROM [Order1] WHERE ([cname] = @cname) And ([id]=@id)">
                                    <SelectParameters>
                                        <asp:Parameter Name="id" />
                                        <asp:SessionParameter Name="cname" SessionField="uid" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                      	</div>	
				    </div>
				    <div class="clear"> </div>
				</div>
	      </div>
</div>
</asp:Content>

