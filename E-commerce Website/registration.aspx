<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="products-grids">
	           <div class="col-md-8 products-grid-left">
	               <div class="products-grid-lft">
	                    <div class="products-grd1">
						       <div class="p-one simpleCart_shelfItem prd">
								    <h4 style=" font-size:2em;">Registration</h4>
								    <table border="0" align="center" style="margin-left:33%;">
								        <tr>
								            <td style="padding-bottom:3%;" align="right">First Name &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                    ErrorMessage="Must be Required FristName" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator></td>    
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Last Name&nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                    ErrorMessage="Must be Required LastName" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator></td>    
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Gender&nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;" align="center">
                                                <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="r1" 
                                                    Height="20px" Width="65px" />
                                                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="r1" 
                                                    Height="20px" />
                                            </td>
								        </tr>
								         
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Address&nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="32px" 
                                                    Width="148px"></asp:TextBox></td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                    ErrorMessage="Must be Required Address" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator></td>        
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">City &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox9" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
								            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                    ErrorMessage="Must be Required City" ControlToValidate="TextBox9">*</asp:RequiredFieldValidator></td>
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">State&nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox10" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
								            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                    ErrorMessage="Must be Required State" ControlToValidate="TextBox10">*</asp:RequiredFieldValidator></td>
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Country &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox11" runat="server" Height="25px" Width="150px" Text="India" 
                                                     Enabled="False" ForeColor="Black" ></asp:TextBox></td>
                                                     
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Contact No &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="150px"></asp:TextBox></td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                    ErrorMessage="Must be Required Mobile Number" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td>    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                    ErrorMessage="Enter Only 10 digits !" ControlToValidate="TextBox3" ValidationExpression="\d{10}"></asp:RegularExpressionValidator></td>    
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">E-mail &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="150px"></asp:TextBox></td>
                                             <td>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Not valid E-Mail Id e.g. sejal@gmail.com !" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator></td>
                                           
								            <td> <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                                ControlToValidate="TextBox2" ErrorMessage="Not valid E-Mail Id e.g. sejal@gmail.com" 
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                           </td>   
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Username &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox8" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                    ErrorMessage="Enter Username" ControlToValidate="TextBox8">*</asp:RequiredFieldValidator></td>    
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Password &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="150px" TextMode="Password"></asp:TextBox></td>
                                           <td>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                   ErrorMessage="Enter Password" ControlToValidate="TextBox6">*</asp:RequiredFieldValidator></td>    
								         
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%; width:30%;" align="right">Re-Type Password &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="150px" TextMode="Password"></asp:TextBox></td>
								         <td>
                                               <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                   ErrorMessage="Enter Confirm Password" ControlToValidate="TextBox7">*</asp:RequiredFieldValidator></td>     
								          <td>
                                              <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                  ErrorMessage="Not same your Pasword & Confirm Password" 
                                                  ControlToCompare="TextBox6" ControlToValidate="TextBox7"></asp:CompareValidator></td>  
								        </tr>
								       <tr>
								            <td style="padding-bottom:3%;" align="right">Hint Question &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                             <asp:DropDownList ID="txtques" runat="server" Height="21px" Width="144px">
                                                    <asp:ListItem>----Select----</asp:ListItem>
                                                    <asp:ListItem>Your favourite book ? </asp:ListItem>
                                                    <asp:ListItem>Your favourite teacher ? </asp:ListItem>
                                                    <asp:ListItem>Your favourite pat Name ?</asp:ListItem>
                                                    <asp:ListItem>Your favourite hobby ?</asp:ListItem>
                                            </asp:DropDownList>   
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                    ErrorMessage="Select your Hint Question" ControlToValidate="txtques">*</asp:RequiredFieldValidator></td>
								        </tr> 
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Answer &nbsp;&nbsp;&nbsp;</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox12" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
								            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox12" ErrorMessage="Required Answer">*</asp:RequiredFieldValidator></td>
								        </tr>
								       
								        <tr>
								            <td colspan="2" align="center" style="padding-top:1%; padding-bottom:1%; padding-left:20%;">
                                                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" style="background-color:#27313e; color:#fff;" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Button ID="Button2" runat="server" Text="Reset" Width="61px" 
                                                    onclick="Button2_Click" style="background-color:#27313e; color:#fff;" />
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

