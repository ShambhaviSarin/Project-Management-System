<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
        <br />
        Username: <asp:TextBox id="username" runat="server" Text=""></asp:TextBox><br />
        Password:  <asp:TextBox id="password" runat="server" Text="" TextMode="Password" ></asp:TextBox><br />
        <asp:CheckBox ID="CheckBox1" runat="server" /> Remember me<br />
        <asp:Button id="login" runat="server" Text="Login" onclick="login_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username Required" ControlToValidate="username" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password required" ControlToValidate="password" Display="None"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Wrong Username or Password" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </div>
</asp:Content>

