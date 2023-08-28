<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Print_Oreder_Status.aspx.cs" Inherits="Print_Oreder_Status" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print Order Status|</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
    <form id="form1" runat="server">
     <table  align="center" width="50%" >
     <tr>
     <td align="center"> <asp:Button ID="Button1" BackColor="#204056" 
                                ForeColor="White" Width="100px" runat="server" Text="Print"  OnClick="Button1_Click"/>
                          </td>
     </tr>
						        <tr>
						            <td>				                       
                                              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                                  DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" 
                                                  ForeColor="#333333" GridLines="None">                                                  
                                                  <RowStyle BackColor="#E3EAEB" BorderColor="White" />
                                                  <Columns>                                                  
                                                      <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="True" 
                                                          SortExpression="id" InsertVisible="False">
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White" CssClass="upd1" Width="5%" />
                                                      </asp:BoundField>
                                                          <asp:TemplateField HeaderText="Selected Product">
                                                            <ItemTemplate>
                                                                <table width="100%" border="1">
                                                                    <tr>
                                                                    <td style="font-weight:bold;">Product Name</td>
                                                                      <td style="font-weight:bold;">Qut</td>
                                                                       <td style="font-weight:bold;">Price</td>
                                                                    </tr>
                                                                    <tr>
                                                                    <td><%# Eval("sDetail") %></td>
                                                                    </tr>
                                                                </table>
                                                            </ItemTemplate>
                                                              <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="10%" />
                                                          </asp:TemplateField>
                                                     
                                                      <asp:TemplateField HeaderText="Total">
                                                        <ItemTemplate>
                                                            <asp:Label ID="l1" runat="server"  Text='<%# Eval("m_total") %>'></asp:Label>
                                                        </ItemTemplate>
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:TemplateField>
                                                      
                                                      <asp:BoundField  DataField="status" HeaderText="Status" SortExpression="status" >
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:BoundField>
                                                      
                                                      <asp:BoundField ReadOnly="True"  DataField="odate" HeaderText="odate" 
                                                          SortExpression="odate" >
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />
                                                      </asp:BoundField>
                                                      
                                                                                                     
                                                  </Columns>                                                 
                                                  <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                                  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                                  <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                                  <HeaderStyle Font-Bold="True" ForeColor="White" />
                                                  <EditRowStyle BackColor="#7C6F57" />
                                                  <AlternatingRowStyle BackColor="White" />
                                              </asp:GridView>                                              
                                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                  ConnectionString="<%$ ConnectionStrings:cn %>" 
                                                  SelectCommand="SELECT * FROM [Order1]"
                                                   ProviderName="<%$ ConnectionStrings:cn.ProviderName %>">
                                                 
                                              </asp:SqlDataSource>

                                    
                                                 </td>
							    </tr>
			                </table>
			              
    </form>
</body>
</html>
