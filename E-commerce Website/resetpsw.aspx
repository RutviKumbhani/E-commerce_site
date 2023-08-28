<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="resetpsw.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						       <div class="p-one simpleCart_shelfItem prd">
								    <h4 style="font-size:2em;">Change Password</h4>
								    <table border="0" align="center">
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Username &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="150px"></asp:TextBox>
                                            </td>
                                            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="Must be Required Username" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
								            </td>                                                
								        </tr>
                                        <tr>
								            <td style="padding-bottom:3%;" align="right">Old Password&nbsp;&nbsp;&nbsp; </td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="150px" TextMode="Password"></asp:TextBox></td>
								            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="Must be Required Old Password" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
								            </td> 
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">New Password &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="150px" TextMode="Password"></asp:TextBox></td>
								            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ErrorMessage="Must be Required New Password" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
								            </td> 
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Re-type Password &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="150px" TextMode="Password"></asp:TextBox></td>
								            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                    ErrorMessage="Must be Required Ry-Type Password" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                    ErrorMessage="Not same Password and Ry-Type Passwprd" 
                                                    ControlToCompare="TextBox3" ControlToValidate="TextBox4">*</asp:CompareValidator>
								            </td> 
								        </tr>
								         <tr>
								            <td colspan="2" align="center"style="padding-top:2%; padding-bottom:5%;">
                                              
                                                <asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button1_Click" style="background-color:#27313e; color:#fff;"/>
                                               
                                                                                              
								            </td>
								        </tr>
								        <tr>
								            <td>
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
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

