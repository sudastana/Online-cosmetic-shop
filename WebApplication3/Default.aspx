<%@Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .style1
        {
            width: 2500px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:1100px" >
<tr style="background-color:#FF3399;width:2500px;">
<td class="style1" style="text-align:right" > 
    <asp:Label ID="Label4" runat="server" style="text-align:left" Font-Bold="True" 
        Font-Italic="True" Font-Names="Arial Black"></asp:Label>

    <asp:Button ID="Button1" runat="server" Text="LogOut" BackColor="#FFCCFF" 
        BorderColor="White" Font-Bold="True" Font-Names="Comic Sans MS" 
        ForeColor="#333300" Height="28px" Width="183px" onclick="Button1_Click1" style="margin-left: 40px" 
             />

    </td>

    <td>
        &nbsp;</td>
    </tr>
   
</table>
    <asp:DataList ID="DataList1" runat="server"  DataKeyField="Product" 
    DataSourceID="SqlDataSource1" Height="293px" Width="610px" 
     RepeatColumns="4" RepeatDirection="Horizontal" 
        onitemcommand="DataList1_ItemCommand1" 
        onselectedindexchanged="DataList1_SelectedIndexChanged1" >
    <ItemTemplate>
    <table style="width:450px">
    <tr>
    <td style="text-align:center; background-color:#FFCCCC">
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pname")%>' Font-Bold="True" 
            Font-Names="Franklin Gothic Medium" ForeColor="#333300"></asp:Label>
    </td>
    </tr>
    <tr>
    <td style="text-align:center">
        <asp:Image ID="Image1" runat="server" BorderColor="#FFCCCC" BorderWidth="1px" 
            Height="279px" Width="278px"  ImageUrl='<%# Eval("Pimage") %>'/>
    </td>
    </tr><tr>
    <td style="text-align:center; background-color:#5f98f3">
        <asp:Label ID="Label2" runat="server" Text="Price:Rs" Font-Bold="True" 
            Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True" 
            Font-Names="Arial" ForeColor="White" style="text-align:center"></asp:Label>
   
    </td>
    </tr><tr>
    <td align="center">Qauntity
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    </td>
    </tr>
    <tr>
    <td style="text-align:center">
        <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
            ImageUrl="~/images/addcart.jpg" Width="160px"  CommandArgument='<%# Eval("Product") %>' CommandName="AddToCart"/>
    </td>
    </tr>
    
    </table>
    <br />
    <br />
    
</ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:RecorddbConnectionString %>" 
        SelectCommand="SELECT [Product], [Pdesc], [PName], [Pimage], [Pprice] FROM [Product1]"></asp:SqlDataSource>
</asp:Content>
