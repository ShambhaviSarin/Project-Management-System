<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Results_Dev.aspx.cs" Inherits="_Default" Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="pending" runat="server" ConnectionString='<%$ConnectionStrings: ProjectCS%>' SelectCommand="Select Title, Username, Comm from Projects inner join Comments on Projects.Id=Comments.Pid inner join Login on Login.Id=Comments.Uid where Comments.status = '-1'">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="value" Name="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataSourceID="pending" SkinID="gridviewSkin">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Developer Name" />
            <asp:BoundField DataField="Title" HeaderText="Project Name" />
            <asp:BoundField DataField="Comm" HeaderText="Comments" />
        </Columns>
    </asp:GridView>
    <br />APPROVED<br />
    <asp:SqlDataSource ID="approved" runat="server" ConnectionString='<%$ConnectionStrings: ProjectCS%>' SelectCommand="Select Title, Username, Comm from Projects inner join Comments on Projects.Id=Comments.Pid inner join Login on Login.Id=Comments.Uid where Comments.status = '1'">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="value" Name="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" DataSourceID="approved" SkinID="gridviewSkin">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Developer Name" />
            <asp:BoundField DataField="Title" HeaderText="Project Name" />
            <asp:BoundField DataField="Comm" HeaderText="Comments" />
        </Columns>
    </asp:GridView>
    <br />REJECTED<br />
    <asp:SqlDataSource ID="rejected" runat="server" ConnectionString='<%$ConnectionStrings: ProjectCS%>' SelectCommand="Select Title, Username, Comm from Projects inner join Comments on Projects.Id=Comments.Pid inner join Login on Login.Id=Comments.Uid where Comments.status = '0'">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="value" Name="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false" DataSourceID="rejected" SkinID="gridviewSkin">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Developer Name" />
            <asp:BoundField DataField="Title" HeaderText="Project Name" />
            <asp:BoundField DataField="Comm" HeaderText="Comments" />
        </Columns>
    </asp:GridView>
</asp:Content>

