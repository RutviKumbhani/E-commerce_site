<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						    <div class="p-one simpleCart_shelfItem prd">
						    <h4 style="font-size:2em;">Customer Shopping Detail</h4>						
                             <table border="0"  align="center" width="100%">
                    <tr style="float:left; margin-bottom:2%;">
                       <td align="right">
                            <asp:Label ID="lblUser" runat="server" Text="Name :" Width="204px"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TextBox1" runat="server" Width="290px" Enabled="false" ForeColor="Black"></asp:TextBox>
                        </td>
                        
                    </tr>
                    
                    <tr style="float:left; margin-bottom:2%;">
                        <td align="right">
                            <asp:Label ID="lblEmail" runat="server" Text="Email :" Width="204px"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TextBox2" runat="server" Width="290px" Enabled="false" ForeColor="Black"></asp:TextBox>
                        </td>
                       
                    </tr>
                    <tr style="float:left; margin-bottom:2%;">
                <td align="right">
                    <asp:Label ID="lblContact" runat="server" Text="Mobile No.:" Width="204px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" Width="290px" Enabled="false" ForeColor="Black"></asp:TextBox>
                </td>
               
            </tr>
                    <tr style="float:left; margin-bottom:2%;">
                     <td align="right">
                            <asp:Label ID="lblCmnt" runat="server" Text="Address :" Width="204px"></asp:Label>
                        </td>
                        <td align="left">
                            <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Width="290px" Enabled="false" ForeColor="Black"></asp:TextBox>
                        </td>
                       
                    </tr>
                    <tr style="float:left">
                        <td align="right"><asp:Label ID="Label4" runat="server" Text="Selected Product :" Width="204px"></asp:Label></td>
                        <td align="left">
                            <table style="border:2px solid #204056;" width="130%">
                                <tr style="border:2px solid #204056;">
                                    <td><b>Product Name</b></td>
                                    <td><b>Quantity</b></td>
                                    <td><b>Total</b></td>
                                    
                                </tr>
                                
                                    <asp:Literal ID="Literal2" runat="server"></asp:Literal>    
                                
                            </table>
                            
                        </td>
                        
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:cn %>" 
                            SelectCommand="SELECT [pname], [qui], [total] FROM [ADDTOCAR1]"  ProviderName="<%$ ConnectionStrings:cn.ProviderName %>"></asp:SqlDataSource>

                       </tr>
                     
                    <tr style="float:left; margin-left:39%;">
                    
                        <td><h3>Total Amount:</h3></td>
                        <td>
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                        </td>
                      </tr>
                       <tr style="float:left; margin-left:40%; margin-top:1%; margin-bottom:1%;">
                        <td>
                       
                            <asp:Button ID="btnSubmit" runat="server" Text="Confirm" BackColor="#204056" 
                                ForeColor="White" Width="100px" onclick="btnSubmit_Click"/>
                            &nbsp;
                        </td>
                        <td align="center" >
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

