<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MY_account.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="products-grids">
	 <div class="col-md-8 products-grid-left">
	      <div class="products-grid-lft">
	           <div class="product-grd">
				    <div class="p-one simpleCart_shelfItem prd">
			         <h4 style="padding-left:10%;font-size:2em;">My Account</h4>
				     <asp:Panel ID="Panel1" runat="server" Width="100%">
                        <!-- <asp:Panel ID="pnllogin" runat="server"  Width="100%" Visible="false">
                             <table border="0" align="center">								    
							  <tr>
								 <td style="padding-bottom:3%;" align="right">Username :-</td>
								 <td style="padding-bottom:3%; width: 157px;">
                                 <asp:TextBox ID="TextBox13" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
                                 <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                 ErrorMessage="Enter Username" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator></td>
							 </tr>
						      <tr>
								  <td style="padding-bottom:3%;" align="right">Password :-</td>
				                  <td style="padding-bottom:3%; width: 157px;">
                                  <asp:TextBox ID="TextBox14" runat="server" Height="25px" Width="150px" 
                                   TextMode="Password"></asp:TextBox></td>
                                   <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                   ErrorMessage="Enter password" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator></td>         
						      </tr>
							  <tr>
	                	            <td colspan="2" align="center" style="padding-top:5%; padding-bottom:5%; ">
                                     <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                                     </td>
						     </tr>
						     <tr>
								  <td>
                                     <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False" />
                                   </td>
						    </tr>
						    <tr>
								 <td style="padding-bottom:3%;" align="center" colspan="2">Not yet Registered? Click 
                                     here to <a href="registration.aspx">Register Now</a></td>
								            
						    </tr>
						    <tr>
							    <td style="padding-bottom:3%;" align="center" colspan="2"><a href="forgatepaw.aspx">
                                    Forgate Password</a></td>								            
						    </tr>
						    <tr>
					            <td style="padding-bottom:3%;" align="center" colspan="2"><a href="resetpsw.aspx">
                                      Reset password</a></td>								            
					        </tr>
					</table>
                     </asp:Panel>-->
        <asp:Panel ID="pnlviewdetail" runat="server" Width="100%" Visible="false">
           <table border="0" align="center" style="margin-left:40%;">
								        <tr>
								            <td style="padding-bottom:3%;" align="right">First Name :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                            </td>                                                
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Last Name :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                            </td>                                             
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Gender :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label3" runat="server" ></asp:Label>
                                            </td>
								        </tr>
								         
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Address :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label4" runat="server" ></asp:Label>
                                             </td>
                                                 
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">City :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label5" runat="server" ></asp:Label>
                                             </td>
								           
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">State :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label6" runat="server" ></asp:Label>
                                             </td>
								           
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Country :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label7" runat="server"></asp:Label>
                                             </td>
                                                     
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Mobile No :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label8" runat="server"></asp:Label>
                                             </td>
                                             
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">E-mail :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label9" runat="server" ></asp:Label>
                                            </td>
                                              
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Username :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label10" runat="server" ></asp:Label>
                                            </td>
                                              
								        </tr>
								        <!--<tr>
								            <td style="padding-bottom:3%;" align="right">Password :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                            </td>
                                          								         
								        </tr>-->
								        
								       <tr>
								            <td style="padding-bottom:3%;" align="right">Hint Question :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label13" runat="server"></asp:Label>
                                            </td>
                                           
								        </tr> 
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Answer :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:Label ID="Label14" runat="server" ></asp:Label>
                                            </td>
								            
								        </tr>
								       
								        <tr>
								            <td colspan="2" align="center" style="padding-top:1%; padding-bottom:1%;">
                                                <asp:Button ID="Button2" runat="server" Text="Edit" onclick="Button2_Click" />
                                               
								            </td>
								        </tr>
								        
								    </table>
        </asp:Panel>      
    
    </asp:Panel>
    <asp:Panel ID="pnlupdate" runat="server" Width="100%" Visible="false">
         <table border="0" align="center" style="margin-left:27%;">
								        <tr>
								            <td style="padding-bottom:3%;" align="right">First Name :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Height="25px" Width="150px"></asp:TextBox></td>
                                            <td>
                                                &nbsp;</td>    
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Last Name :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="True" Height="25px" Width="150px"></asp:TextBox></td>
                                            <td>
                                                &nbsp;</td>    
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
								            <td style="padding-bottom:3%;" align="right">Address :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="32px" 
                                                    Width="148px"></asp:TextBox></td>
                                            <td>
                                                &nbsp;</td>        
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">City :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox9" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
								            <td>
                                                &nbsp;</td>
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">State :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox10" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
								            <td>
                                                &nbsp;</td>
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Country :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox11" runat="server"  Height="25px" Width="150px" Text="India" 
                                                  ForeColor="Black" ></asp:TextBox></td>
                                                     
								        </tr>
								         <tr>
								            <td style="padding-bottom:3%;" align="right">Contact No :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="150px"></asp:TextBox></td>
                                              
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">E-mail :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="150px"></asp:TextBox></td>
                                             
								        </tr>
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Username :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True" Height="25px" Width="150px"></asp:TextBox></td>
                                            </tr>
								      
								       
								       <tr>
								            <td style="padding-bottom:3%;" align="right">Hint Question :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
								        </tr> 
								        <tr>
								            <td style="padding-bottom:3%;" align="right">Answer :-</td>
								            <td style="padding-bottom:3%;">
                                                <asp:TextBox ID="TextBox12" runat="server" Height="25px" Width="150px"></asp:TextBox></td>
								            </tr>								       
								        <tr>
								            <td colspan="2" align="center" style="padding-top:1%; padding-bottom:1%; padding-left:10%;">
                                                <asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" />
                                               
								            </td>
								        </tr>								        
								    </table>
        </asp:Panel>     
		</div>	
	    </div>
		<div class="clear"> </div>
	    </div>
	  </div>
</div>  
</asp:Content>

