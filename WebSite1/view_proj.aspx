<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_proj.aspx.cs" Inherits="Default6" Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <asp:Label id="Label1" runat="server" Text=""></asp:Label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="proj" runat="server" ConnectionString='<%$ConnectionStrings:ProjectCS %>' SelectCommand="Select * from Projects"></asp:SqlDataSource>
    <asp:gridview id="GridView2" runat="server" autogeneratecolumns="false" DataSourceID="proj" SkinID="gridviewSkin">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Project Title" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" />
            <asp:BoundField DataField="Client" HeaderText="Client" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
            <asp:BoundField DataField="RCount" HeaderText="Revise Count" />
        </Columns>
    </asp:gridview>
    Select project you want to comment on: <asp:dropdownlist id="ddl1" runat="server"></asp:dropdownlist><br />
    <asp:Button ID="Btn3" runat="server" Text="COMMENT" onclick="Btn3_Click"/>
</asp:Content>

