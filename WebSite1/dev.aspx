<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dev.aspx.cs" Inherits="_Default" Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:Label id="Label1" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Button ID="Btn1" runat="server" Text="SEARCH" onclick="Btn1_Click"/><br />
    <asp:Button ID="Btn2" runat="server" Text="VIEW PROJECTS" onclick="Btn2_Click"/><br />
    <asp:Button ID="Btn3" runat="server" Text="PROJECT STATUS" onclick="Btn3_Click"/>
</asp:Content>

