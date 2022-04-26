<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="market.homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 69px;
        }
        .color{
            background-color:#eaeaea;
        }
        .auto-style2 {
            background-color: #eaeaea;
            width: 1016px;
            height: 26px;
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
        .search{
            border-radius:50px;
            margin-left: 30px;
        }
        .search-button{
          border-radius: 50px 50px 50px 50px;
          background: #58a3da;
          margin-left: 30px;
        }
    
        .auto-style17 {
            background-color: #eaeaea;
            width: 143px;
            height: 25px;
        }
        .auto-style18 {
            width: 100%;
        }
    
        .wp{
            background-color:#212121;
        }
            
        .auto-style25 {
            height: 18px;
        }
        .auto-style26 {
            background-color: #212121;
            height: 44px;
        }
        .style{
            background-color: white;
        }
            
        .auto-style29 {
            width: 321px;
        }
        .auto-style35 {
            width: 177px;
        }
        .auto-style36 {
            width: 266px;
        }
        .card{
            box-shadow:1px 1px 1px black;
            border-radius: 12px;
            border: 2px solid white;
        }
            
        .auto-style37 {
            height: 26px;
        }
        .title{
            width:100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
            
        </style>
</head>
<body style="height: 189px">
    <form id="form1" runat="server">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" rowspan="2">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="Welcome to Our Online Store !" Font-Names="Arial"></asp:Label>
                    </td>
                    <td class="auto-style16" rowspan="2">
                        <asp:Image ID="Image1" runat="server" Height="57px" ImageUrl="image\person.png" />
                    </td>
                    <td class="auto-style8" colspan="3">
                        <asp:Label ID="Label2" runat="server" Font-Names="Arial" ForeColor="#888888" Text="My Account"></asp:Label>
                    </td>
                    <td class="auto-style6" rowspan="2">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="53px" ImageUrl="image\cart.png" Width="57px" />
                    </td>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Text="My Cart"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial" NavigateUrl="~/logIn.aspx" Target="_self">Login</asp:HyperLink>
                    </td>
                    <td class="auto-style14">
                        <asp:Label ID="Label3" runat="server" Text="/"></asp:Label>
                    </td>
                    <td class="auto-style17">
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Arial" NavigateUrl="~/signUp.aspx">Register</asp:HyperLink>
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                </table>
        <div>
            <table class="auto-style18">
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="90px" margin-left="20px" Text="Sigma"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server" Font-Names="Arial" Font-Size="X-Large" Height="43px" Width="450px" Class="search" placeholder="Search"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Search" class="search-button" Height="40px" Width="90px"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26">
                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" class="title" Font-Names="Arial" ForeColor="White" Font-Size="30px">Home</asp:HyperLink>
                 
                    </td>
                </tr>
                <tr>
                    <td class="style">
                        <table class="auto-style18">
                            <tr>
                                <td colspan="7" class="auto-style37"></td>
                            </tr>
                            <tr>
                                <td class="card">
                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="221px" ImageUrl="image\k.jfif" Width="343px" CssClass="card" OnClick="ImageButton2_Click" />
                                </td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style36">
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="209px" ImageUrl="image\k2.jfif" Width="331px" />
                                </td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">
                                    <asp:ImageButton ID="ImageButton4" runat="server" Height="185px" ImageUrl="image\k3.jfif" Width="368px" />
                                </td>
                                <td class="auto-style35">&nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton6" runat="server" Height="221px" ImageUrl="image\k5.jfif" Width="441px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">
                                    <asp:ImageButton ID="ImageButton5" runat="server" Height="221px" ImageUrl="image\k4.jfif" Width="278px" />
                                </td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style36">
                                    <asp:ImageButton ID="ImageButton7" runat="server" Height="221px" ImageUrl="image\k6.jfif" Width="320px" />
                                </td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">
                                    <asp:ImageButton ID="ImageButton8" runat="server" Height="221px" ImageUrl="image\k7.jfif" Width="372px" />
                                </td>
                                <td class="auto-style35">&nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton9" runat="server" Height="221px" ImageUrl="image\k8.jfif" Width="444px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">
                                    <asp:ImageButton ID="ImageButton10" runat="server" Height="221px" ImageUrl="image\p.jfif" Width="298px" />
                                </td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style36">
                                    <asp:ImageButton ID="ImageButton11" runat="server" Height="221px" ImageUrl="image\p1.jfif" Width="298px" />
                                </td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">
                                    <asp:ImageButton ID="ImageButton12" runat="server" Height="221px" ImageUrl="image\p2.jfif" Width="383px" />
                                </td>
                                <td class="auto-style35">&nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton13" runat="server" Height="221px" ImageUrl="image\m.jfif" Width="298px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style29">
                                    <asp:ImageButton ID="ImageButton14" runat="server" Height="221px" ImageUrl="image\m2.jfif" Width="298px" />
                                </td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style36">
                                    <asp:ImageButton ID="ImageButton15" runat="server" Height="221px" ImageUrl="image\m3.jfif" Width="298px" />
                                </td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">
                                    <asp:ImageButton ID="ImageButton16" runat="server" Height="221px" ImageUrl="image\m4.jfif" Width="298px" />
                                </td>
                                <td class="auto-style35">&nbsp;</td>
                                <td>
                                    <asp:ImageButton ID="ImageButton17" runat="server" Height="221px" ImageUrl="image\m5.jfif" Width="306px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style29">&nbsp;</td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style36">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td class="auto-style35">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
