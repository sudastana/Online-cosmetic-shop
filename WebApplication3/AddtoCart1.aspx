<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddtoCart1.aspx.cs" Inherits="WebApplication3.AddtoCart1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="margin:0 auto;">
    
    <h2 style="text-decoration:underline overline blink; color:Orange">You have Following product in your car</h2>
    <br /><br />
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
            Font-Names="Arial" Font-Size="XX-Large" NavigateUrl="~/Default.aspx">Continue Shopping</asp:HyperLink>
    <br /><br /> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="#CCFFCC" BorderColor="#333300" BorderWidth="2px" 
            EmptyDataText="No Product  Available in shopping cart" Font-Bold="True" 
            Font-Names="Arial" Height="250px" ShowFooter="True" Width="1000px" 
            onrowdeleting="GridView1_RowDeleting">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="Sr No">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="pid" HeaderText="Product ID">
                <HeaderStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="prime" HeaderText="Product image">
                    <ControlStyle Height="300px" Width="340px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="Pname" HeaderText="Product Name">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="PPrice" HeaderText="Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Pquantity" HeaderText="Quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="ptotalprice" HeaderText="Total Price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#3366FF" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#FF0066" ForeColor="White" />
        </asp:GridView>
        
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" BackColor="#FF0066" 
            Font-Size="Large" Height="45px" onclick="Button1_Click" Width="150px" />
    </div>
    </form>
</body>
</html>
