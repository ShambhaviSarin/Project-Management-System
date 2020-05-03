<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="proj_res.aspx.cs" Inherits="_Default" Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="proj" runat="server" ConnectionString='<%$ConnectionStrings: ProjectCS%>' SelectCommand="Select * from Projects inner join Comments on Projects.Id=Comments.Pid inner join Login on Login.Id=Comments.Uid where Comments.status = '1' and Title=@t">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="value" Name="t" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataSourceID="proj" SkinID="gridviewSkin">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Project Name" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" />
            <asp:BoundField DataField="Client" HeaderText="Client" />
            <asp:BoundField DataField="Status" HeaderText="Status" />
            <asp:BoundField DataField="RCount" HeaderText="Revise Count" />
            <asp:BoundField DataField="Username" HeaderText="Developer Name" />
            <asp:BoundField DataField="Comm" HeaderText="Comments" />
        </Columns>
    </asp:GridView>
</asp:Content>

