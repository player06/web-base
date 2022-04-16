<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="market.homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .color{
            background-color:#eaeaea;
        }
        .auto-style2 {
            background-color: #eaeaea;
            width: 868px;
            height: 26px;
        }
        .auto-style3 {
            width: 868px;
        }
        .auto-style4 {
            background-color: #eaeaea;
            height: 26px;
        }
        .auto-style6 {
            background-color: #eaeaea;
            width: 67px;
            height: 26px;
        }
        .auto-style8 {
            background-color: #eaeaea;
            height: 26px;
            width: 248px;
        }
        .auto-style13 {
            background-color: #eaeaea;
            width: 31px;
            height: 26px;
        }
        .auto-style14 {
            background-color: #eaeaea;
            width: 1px;
            height: 26px;
        }
        .auto-style16 {
            background-color: #eaeaea;
            width: 55px;
            height: 26px;
        }
        .auto-style17 {
            background-color: #eaeaea;
            width: 120px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="2">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Welcome to Our Online Store !" Font-Names="Arial"></asp:Label>
                    </td>
                    <td class="auto-style16" rowspan="2">
                        <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="C:\Users\Mohab Khaled\source\repos\web-base\market\image\person.png" />
                    </td>
                    <td class="auto-style8" colspan="3">
                        <asp:Label ID="Label2" runat="server" Font-Names="Arial" ForeColor="#888888" Text="My Account"></asp:Label>
                    </td>
                    <td class="auto-style6" rowspan="2">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" ImageUrl="C:\Users\Mohab Khaled\source\repos\web-base\market\image\cart.png" Width="57px" />
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Text="My Cart"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial">Login</asp:HyperLink>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label3" runat="server" Text="/"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Arial">Register</asp:HyperLink>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td colspan="6">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
