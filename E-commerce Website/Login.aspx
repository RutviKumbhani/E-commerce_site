<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="product-grd">
						       <div class="p-one simpleCart_shelfItem prd">
								   <h4 style="padding-left:0%;font-size:2em;">Login</h4>
								    <table border="0" align="center">								    
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Username </td>
								            <td style="padding-bottom:3%; width: 255px;">
                                                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                                             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ErrorMessage="Enter Username" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator></td>
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Password </td>
								            <td style="padding-bottom:3%; width: 255px;">
                                                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="150px" 
                                                     TextMode="Password"></asp:TextBox></td>
                                            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ErrorMessage="Enter password" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator></td>         
								        </tr>
								        <tr>
								            <td colspan="2" align="center" style="padding-top:5%; padding-bottom:5%; ">
                                                <asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button1_Click" style="background-color:#27313e; color:#fff;"/>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="Button4" runat="server" Text="Reset" Width="61px" style="background-color:#27313e; color:#fff;" />
								            </td>
								        </tr>
								        <tr>
								            <td>
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                                            </td>
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="center" colspan="2">Not yet Registered? Click 
                                                here to <a href="registration.aspx">Register Now</a></td>
								            
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="center" colspan="2"><a href="forgatepaw.aspx">
                                                Forgate Password</a></td>
								            
								        </tr> <tr>
								            <td style="padding-bottom:3%;" align="center" colspan="2"><a href="resetpsw.aspx">
                                                Change Password</a></td>
								            
								        </tr>
								    </table>
                                         
							</div>	
						</div>
						<div class="clear"> </div>
					</div>
	           </div>
	     </div>  
  

</asp:Content>

