<%@ Page Title="" Language="C#" MasterPageFile="~/user.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="market.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 335px;
        }
        
        
        .auto-style10 {
            height: 26px;
            width: 335px;
        }
        .auto-style11 {
            width: 335px;
            height: 9px;
        }
        .auto-style12 {
            height: 9px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="MyAccount Page !"></asp:Label>
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server" Text="name : "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Enabled="False" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="password :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Enabled="False" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label4" runat="server" Text="UserName :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" Enabled="False" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label5" runat="server" Text="birthDate :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBirth" runat="server" Enabled="False" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label6" runat="server" Text="Email :"></asp:Label>
            </td>
            <td class="auto-style8">
                <asp:TextBox ID="txtEmail" runat="server" Enabled="False" Width="197px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:FileUpload ID="Upload" runat="server" Enabled="False" />
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="182px" Width="213px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Button ID="edit" runat="server" OnClick="edit_Click" Text="Edit" />
            </td>
            <td>
                <asp:Button ID="save" runat="server" OnClick="save_Click" Text="Save" Visible="False" />
            </td>
        </tr>
        <tr>
            <td class="auto-style11"></td>
            <td class="auto-style12">
                <asp:Label ID="msg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
