<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="val.aspx.cs" Inherits="ConteolVallidation.val" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 245px;
        }
        .auto-style3 {
            width: 186px;
        }
        .auto-style4 {
            width: 245px;
            margin-left: 200px;
        }
        .auto-style6 {
            margin-left: 320px;
        }
        .auto-style7 {
            margin-left: 320px;
            width: 46px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Name</td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtNames" runat="server" OnTextChanged="txtNames_TextChanged"></asp:TextBox>
                    &nbsp;</td>
                <td>&nbsp;*
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNames" ErrorMessage="Enter the name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Age&nbsp;</td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtAge" runat="server" OnTextChanged="txtAge_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" ErrorMessage="* Invalid Age" MaximumValue="90" MinimumValue="18"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="pasword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password</td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="Cpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pasword" ControlToValidate="Cpass" ErrorMessage="* Enter the password again"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">E-mail</td>
                <td class="auto-style2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="email" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p class="auto-style7">
                    <asp:Button ID="insert" runat="server" OnClick="Button1_Click" Text="Insert" />
                </p>
        <p class="auto-style6">
            <asp:Label ID="Label6" runat="server"></asp:Label>
            </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="70px" />
        <p class="auto-style6">
            </p>
        <p class="auto-style6">
            &nbsp;</p>
    </form>
    <p class="auto-style6">
        &nbsp;</p>
    <p class="auto-style6">
        &nbsp;</p>
</body>
</html>
