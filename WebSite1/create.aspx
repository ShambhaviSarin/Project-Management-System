<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="_Default" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    Title: <asp:TextBox ID="title" runat="server"></asp:TextBox><br />
    Duration: <asp:TextBox ID="duration" runat="server"></asp:TextBox><br />
    Client: <asp:TextBox ID="client" runat="server"></asp:TextBox><br />
    Status: <asp:DropDownList ID="ddl1" runat="server"></asp:DropDownList>
    <asp:Button ID="Btn1" runat="server" Text="Create" OnClick="Btn1_Click" />
    <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Duration required" ControlToValidate="duration" Display="None"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Title required" ControlToValidate="title" Display="None"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Client required" ControlToValidate="client" Display="None"></asp:RequiredFieldValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
</asp:Content>

