<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration page.aspx.cs" Inherits="WebApplication3.Registration_page" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
    <style type="text/css">
        .style1
        {
            width: 76px;
        }
        .style2
        {
            width: 50%;
            height: 72px;
        }
        .style3
        {
            width: 76px;
            height: 72px;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center";
            style="width: 700px; height: 715px; background-color: #FFCCCC;" 
            bgcolor="#FFCCCC" >
            <tr>
                <td colspan="2" align="center">
                    Registration page</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width:50%">
                    First Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="35px" 
                        style="margin-right: 0px" Width="256px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="First Name is empty" 
                        ForeColor="#FF6666">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Only characters" ForeColor="#FF5050" 
                        ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    Last Name:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox2" runat="server" Height="35px" 
                        style="margin-right: 0px" Width="256px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Last Name is empty" 
                        ForeColor="#FF6666">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Only characters" ForeColor="#FF5050" 
                        ValidationExpression="^[A-Za-z]*$" Visible="False"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    Email id:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox3" runat="server" Height="35px" 
                        style="margin-right: 0px" Width="256px" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Email id is empty" 
                        ForeColor="#FF6666">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    Gender:</td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="66px" Width="248px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="DropDownList1" ErrorMessage="Gender is empty" 
                        ForeColor="#FF6666">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Address:</td>
                <td class="style3">
                    <asp:TextBox ID="TextBox4" runat="server" Height="35px" 
                        style="margin-right: 0px" Width="256px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Address is empty" 
                        ForeColor="#FF6666">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    Phone no:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox5" runat="server" Height="35px" 
                        style="margin-right: 0px" Width="256px" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Phone number is empty" 
                        ForeColor="#FF6666">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    Password:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox6" runat="server" Height="35px" 
                        style="margin-right: 0px" Width="256px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Password is empty" 
                        ForeColor="#FF6666">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width:50%">
                    Confirm Password:</td>
                <td class="style1">
                    <asp:TextBox ID="TextBox7" runat="server" Height="35px" 
                        style="margin-right: 0px" Width="256px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="Confirm password is empty" 
                        ForeColor="#FF6666">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center" bgcolor="#FFCCCC">
                    <asp:Button ID="Button1" runat="server" Text="Register" Height="44px" 
                        onclick="Button1_Click" style="margin-left: 0px" Width="219px" 
                        Font-Bold="True" Font-Size="Large"/>
                </td>
              
            </tr>
            <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
             </tr>    
              <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
