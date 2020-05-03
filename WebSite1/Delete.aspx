<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="_Default" Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    Select Project to delete: <asp:DropDownList ID="ddl1" runat="server"></asp:DropDownList><br />
    <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click"/>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>

