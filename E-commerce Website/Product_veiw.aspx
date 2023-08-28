<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Product_veiw.aspx.cs" Inherits="Default3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						    <div class="p-one simpleCart_shelfItem prd">
						    <h4 style="font-size:1em;"></h4>							
							 <table align="center" style="margin-left:35%;  width=;"100%;">
							 <tr>
							    <td colspan="0" align="center">
                                    <asp:Image ID="Image1" runat="server"  Width="150" Height="150" style="margin-left:35%" /></td>
							 </tr>
						     <tr>
						     <td>
						         <table align="center" style="margin-left:20%;" width="100%">
						         <tr>
                                <td align="right">
                                    <asp:Label ID="Label1" runat="server" Text="Product Id : " ForeColor="#204056"></asp:Label>								    
						        </td>
						        <td>
                                    &nbsp;<asp:Label ID="Label2" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                             <tr>
                                <td align="right">
                                    <asp:Label ID="Label3" runat="server" Text="Product Name : " ForeColor="#204056"></asp:Label>								    
						        </td>
						        <td>
                                    &nbsp;<asp:Label ID="Label4" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                             <tr>
                                <td align="right">
                                    <asp:Label ID="Label5" runat="server" Text="Price : " ForeColor="#204056"></asp:Label>								    
						        </td>
						        <td>
                                 &nbsp;<asp:Label ID="Label6" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                             <tr>
                                <td align="right">
                                    <asp:Label ID="Label7" runat="server" Text="Stock : " ForeColor="#204056"></asp:Label>								    
						        </td>
						        <td>
                                 &nbsp;<asp:Label ID="Label8" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                             <tr>
                                <td align="right">
                                    <asp:Label ID="Label9" runat="server" Text="Description : " ForeColor="#204056"></asp:Label>								    
						        </td>
						        <td>
                                   &nbsp;<asp:Label ID="Label10" runat="server" ForeColor="#204056"></asp:Label></td>   
                             </tr> 
                              <tr>
                                <td align="right">
                                    <asp:Label ID="Label11" runat="server" Text="Quantity : " ForeColor="#204056"></asp:Label>								    
						        </td>
						        <td colspan="2">
                                  &nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                                     
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="Enter Quantity" Text="*"></asp:RequiredFieldValidator>
                                         <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic"
                                        ErrorMessage="Pl. Enter Qty. Less Than Stock" Operator="LessThanEqual" SetFocusOnError="True"
                                        Type="Integer">*</asp:CompareValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="Enter Only Number" 
                                        ValidationExpression="[0-9]*" Text="*"></asp:RegularExpressionValidator>
                                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic"
                                        ErrorMessage="Pl. Enter Qty. Greater Than Zero" Operator="NotEqual" SetFocusOnError="True"
                                        Type="Integer" ValueToCompare="0">*</asp:CompareValidator>
                                </td>   
                             </tr>
                                     <tr>
                                 
                                 <td>   <asp:Label ID="Label13" runat="server" Text=" Delivery Date : " ForeColor="#204056"></asp:Label></td>
                                 <td>&nbsp;<asp:TextBox ID="t3" runat="server"/><asp:ImageButton ID="img1" runat="server" Width="25px" BackColor="#DA6248" BorderStyle="Inset" ImageUrl="~/images/cal.jpg" OnClick="img1_Click" />
                                     <asp:Calendar ID="Calendar1" runat="server" DayNameFormat="Shortest" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="2020-02-14" Visible="False" ondayrender="Calendar1_DayRender" VisibleDate="2020-02-14"></asp:Calendar>
                                      </td>
                             </tr>
                             </table>
                            </td>
                            </tr>
                             <tr>
                             <td colspan="2" align="center">
                                 <asp:Button ID="Button1" runat="server" Text="Add To Cart" 
                                 onclick="Button1_Click" BackColor="#204056" ForeColor="White" style="margin:3% -31% 3% 0%"/>
                                </td>
                             </tr>
                              <tr>
                                <td>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                        ShowMessageBox="True" ShowSummary="False" />
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

