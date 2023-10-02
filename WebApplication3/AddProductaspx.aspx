<%@ Page Title="" Language="C#" MasterPageFile="~/default.Master" AutoEventWireup="true" CodeBehind="AddProductaspx.aspx.cs" Inherits="WebApplication3.AddProductaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:5100px">
<table style="height:700px;height:390px; background-color:#5798f3;" align="center">
<tr>
<td align="center" width="50%" colspan="2">
<h1>Adding Product</h1><hr />
</td>
</tr>

<tr>
<td align="center" width="50%">
<h3>Product Id</h3>
</td>
<td width="50%">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
</tr>
<tr>
<td align="center" width="50%">
<h3>Product Name</h3>
</td>
<td width="50%"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
</tr>

<tr>
<td align="center" width="50%">
<h3>Product Desc</h3>
</td>
<td width="50%"><asp:TextBox ID="TextBox3" runat="server" 
        ontextchanged="TextBox3_TextChanged"></asp:TextBox></td>

</tr>

<tr>
<td>
<h3>Image</h3>
</td>
<td>
    <asp:FileUpload ID="FileUpload1" runat="server" /></td>
</tr>

<tr>
<td>
<h3>Product Price</h3>
</td>
<td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>

</tr>

<tr>
<td>
<h3>Product Price</h3>
</td>
<td >
    <asp:Button ID="Button1" runat="server" Text="ADD" onclick="Button1_Click" /></td>
</tr>

<tr>
<td align="center" width="50%">
<h3>Product Prizc</h3>
</td>
<td>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
</tr>
</table>
</div>
</asp:Content>
