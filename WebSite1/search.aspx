<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="Default4" Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    Search by: <asp:dropdownlist id="ddl1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddl1_SelectedIndexChanged"></asp:dropdownlist>
    <asp:DropDownList ID="ddl2" runat="server"></asp:DropDownList>
    <asp:button id="search" runat="server" text="Search" Onclick="search_Click"/>
</asp:Content>

