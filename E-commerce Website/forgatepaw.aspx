<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forgatepaw.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						       <div class="p-one simpleCart_shelfItem prd">
								    <h4 style=" font-size:2em;">Forget Password</h4>
								    <table border="0" align="center">
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Username :-</td>
								            <td style="padding-bottom:3%; width: 161px;">
                                                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
								            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="Required Username" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator></td>
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Hint Question :-</td>
								            <td style="padding-bottom:3%; width: 161px;">
                                             <asp:DropDownList ID="txtques" runat="server" Height="21px" Width="144px">
                                                    <asp:ListItem>your favourite book?</asp:ListItem>
                                                    <asp:ListItem> your favourite teacher?</asp:ListItem>
                                                    <asp:ListItem> your favourite pat Name?</asp:ListItem>
                                                    <asp:ListItem> your favourite hobby?</asp:ListItem>
                                            </asp:DropDownList>   
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="Required Question" ControlToValidate="txtques">*</asp:RequiredFieldValidator></td>
								       
								        </tr> 
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Answer :-</td>
								            <td style="padding-bottom:3%; width: 161px;">
                                                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
								            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ErrorMessage="Required Answer" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator></td>
								       
								        </tr>
								         <tr>
								            <td colspan="2" align="center" style="padding-top:5%; padding-bottom:5%;">
                                                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" style="background-color:#27313e; color:#fff;"/>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="Button2" runat="server" Text="Reset" Width="61px" style="background-color:#27313e; color:#fff;"/>
								            </td>
								        </tr>
								        <tr>
								            <td>
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                                            </td>
								        </tr>
								         <tr>
                                            <td colspan="2">
                                                &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                    ForeColor="#990000" Text="Your Password is:" Visible="False"></asp:Label>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" 
                                                    ForeColor="Red" style="text-align: center" Visible="False"></asp:TextBox>
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

