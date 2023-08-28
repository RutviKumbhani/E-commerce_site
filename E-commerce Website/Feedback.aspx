<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						       <div class="p-one simpleCart_shelfItem prd">
								    <h4  style="font-size:2em;">Feedback</h4>
								    <table border="0"  align="center">
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Name :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
								            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="Must be required your name !" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator></td>
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Gender :-</td>
								            <td style="padding-bottom:3%;" align="center">
                                                <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="r1" 
                                                    Height="20px" Width="65px" />
                                                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="r1" 
                                                    Height="20px" />
                                            </td>
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Contact No :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="150px"></asp:TextBox></td>
								           <td>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter only 10 digits !" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator></td>
                                           <td><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                                     ControlToValidate="TextBox3" ErrorMessage="Enter only 10 digits" 
                                                    ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
                                            </td>         
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">E-mail :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="150px"></asp:TextBox></td>
								            <td>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Not valid E-Mail Id e.g. sejal@gmail.com !" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator></td>
                                           
								            <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                ControlToValidate="TextBox2" ErrorMessage="Not valid E-Mail Id e.g. sejal@gmail.com" 
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                           </td>
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Message :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="32px" 
                                                    Width="159px"></asp:TextBox></td>
                                            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter your feedback !" 
                                               ControlToValidate="TextBox4">*</asp:RequiredFieldValidator></td>                                           
								        </tr>
								        <tr>
								            <td>
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                                    ShowSummary="False" ShowMessageBox="True" />
                                            </td>
								        </tr>
								        <tr>
								            <td colspan="2" align="center"style="padding-top:0%; padding-bottom:5%; ">
                                                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" style="background-color:#27313e; color:#fff;" /> &nbsp;&nbsp;&nbsp;
                                            &nbsp;<asp:Button ID="Button2" runat="server" Text="Reset" onclick="Button2_Click" style="background-color:#27313e; color:#fff;"/>
                                            
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

