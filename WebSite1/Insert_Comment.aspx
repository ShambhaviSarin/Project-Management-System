<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Insert_Comment.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
    Comment: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Post Comment" onclick="Button1_Click"/>
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Comment required" ControlToValidate="TextBox1" Display="None"></asp:RequiredFieldValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>

