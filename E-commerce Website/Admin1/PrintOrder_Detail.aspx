<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintOrder_Detail.aspx.cs" Inherits="Admin1_PrintOrder_Detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
   
    <title>Print|Om Sai Fashion Admin pannel</title>

    <!-- Bootstrap CSS -->    
   
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" type="text/css" />
    
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/style-responsive.css" rel="stylesheet" type="text/css" />

   
</head>
  <body>
     
     <div class="panel-body">
                              <form class="form-horizontal" runat="server" action="" > 
                             <div>
                             <asp:Button ID="Button1" runat="server" Text="Print This Page" 
                                                      onclick="Button1_Click" />
                             </div>
                          
                               <table style="margin-top:1%;" width="100%" align="center">
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
                                                      <asp:BoundField DataField="cname" HeaderText="Name" 
                                                          SortExpression="cname" ReadOnly="True"  >                                                          
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />                                                          
                                                      </asp:BoundField>                                                          
                                                      <asp:TemplateField   HeaderText="Email" SortExpression="email">
                                                            <ItemTemplate>
                                                                <asp:Label ReadOnly="True" ID="Label1" runat="server" Text='<%# Bind("email") %>'></asp:Label>                                                            
                                                         </ItemTemplate>  
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="5%" />                                                    
                                                    </asp:TemplateField>
                                                      <asp:BoundField DataField="contact_no" HeaderText="Contact_no" 
                                                          SortExpression="contact_no" ReadOnly="True" >
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="address" HeaderText="Address" 
                                                          SortExpression="address" ReadOnly="True"  >                                                      
                                                          <HeaderStyle BackColor="#394A59" ForeColor="White"  CssClass="upd1" Width="7%" />
                                                      </asp:BoundField>
                                                          <asp:TemplateField HeaderText="Selected Product">
                                                            <ItemTemplate>
                                                                <table width="120%" border="1">
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
                              
    </div>
  </body>
</html>
