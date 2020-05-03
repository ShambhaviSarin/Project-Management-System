<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="Default3" Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="proj" runat="server" ConnectionString='<%$ConnectionStrings: ProjectCS%>' SelectCommand="Select * from Projects"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataSourceID="proj" SkinID="gridviewSkin">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Project Title" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" />
            <asp:BoundField DataField="Client" HeaderText="Client" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
            <asp:BoundField DataField="RCount" HeaderText="Revise Count" />
        </Columns>
    </asp:GridView>
</asp:Content>

