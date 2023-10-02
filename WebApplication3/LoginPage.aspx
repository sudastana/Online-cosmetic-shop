<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <table align="center" 
        style="height: 490px; width: 740px; background-color: #FFCCCC;">
        <tr>
            <td colspan="2" align="center">
                <h2>Login Page</h2></td>
            
        </tr>
        <tr>
            <td align="center">
                <b>Email</b>
                </td>
            <td>
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="45px" 
                    Width="212px" TextMode="Email"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="center" style="width:50%">
                 <b>Password</b></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="38px" Width="216px" 
                    TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" align="center">


                <asp:Button ID="Button1" runat="server" Height="57px" Text="Button" 
                    Width="199px" onclick="Button1_Click1" />


            </td>
           
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
               </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
