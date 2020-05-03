<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search_dev.aspx.cs" Inherits="Default5" Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />Developer Name: <asp:DropDownList ID="ddl1" runat="server"></asp:DropDownList><br />
    <asp:Button ID="Button1" runat="server" Text="SEARCH" onclick="Button1_Click"/>
</asp:Content>

