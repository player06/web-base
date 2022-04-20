<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="logIn.aspx.cs" Inherits="market.logIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .frame{
             box-shadow: 0px 5px 10px 0px rgba(0, 0, 0, 0.5);
             border-radius: 10px;
             width: 210px;
             height:30px;
        }
        .frame:hover {
             transform: scale(1.1);
             box-shadow: 0px 10px 20px 2px rgba(0, 0, 0, 0.25);
        }
        .button{
            border-radius: 15px;
            width:90px;
            height:29px;
            margin-left:60px;
        }
        .auto-style2 {
            width: 100%;
        }
        .valid{
            margin-left:20px;
        }
   
        .expression{
            margin-left:20px;
        }
   
        .auto-style3 {
            height: 44px;
        }
   
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style2">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="100px" Text="Log In"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="201px" Width="219px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtUserName" runat="server" CssClass="frame"  placeholder=" UserName" Font-Names="Arial" Font-Size="Large"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="valid" ErrorMessage="UserName Required" ControlToValidate="TxtUserName" ForeColor="Red" Font-Names="Arial"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" class="expression" ErrorMessage="wrong UserName" Font-Names="Arial" ForeColor="Red" ControlToValidate="TxtUserName" ValidationExpression="\w{5,10}\d?"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="TxtPass" runat="server" CssClass="frame"  placeholder=" Password" Font-Names="Arial" Font-Size="Large" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="valid" ErrorMessage="Password Required" ControlToValidate="TxtPass" ForeColor="Red" Font-Names="Arial"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" class="expression" ErrorMessage="Make sure that the password like that 'Ahmed1234' " Font-Names="Arial" ForeColor="Red" ControlToValidate="Txtpass" ValidationExpression="\w{5,9}\d"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                        <asp:Button ID="submit" runat="server" Text="submit" class="button" Font-Names="Arial" Font-Size="Medium" OnClick="submit_Click"/>
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="gg" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
