<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="comments.aspx.cs" Inherits="Default2" Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="pending" runat="server" ConnectionString='<%$ConnectionStrings: ProjectCS%>' SelectCommand="Select Title, Username, Comm from Projects inner join Comments on Projects.Id=Comments.Pid inner join Login on Login.Id=Comments.Uid where Comments.status = '-1'"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataSourceID="pending" SkinID="gridviewSkin">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Developer Name" />
            <asp:BoundField DataField="Title" HeaderText="Project Name" />
            <asp:BoundField DataField="Comm" HeaderText="Comments" />
            <asp:TemplateField>
                <HeaderTemplate>
                    Status
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <asp:Button id="approve" runat="server" Text="Approve" Onclick="approve_Click"/>
                    <asp:Button id="reject" runat="server" Text="Reject" Onclick ="reject_Click"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    <br />APPROVED<br />
    <asp:SqlDataSource ID="approved" runat="server" ConnectionString='<%$ConnectionStrings: ProjectCS%>' SelectCommand="Select Title, Username, Comm from Projects inner join Comments on Projects.Id=Comments.Pid inner join Login on Login.Id=Comments.Uid where Comments.status = '1'"></asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" DataSourceID="approved" SkinID="gridviewSkin">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Developer Name" />
            <asp:BoundField DataField="Title" HeaderText="Project Name" />
            <asp:BoundField DataField="Comm" HeaderText="Comments" />
        </Columns>
    </asp:GridView>
    <br />REJECTED<br />
    <asp:SqlDataSource ID="rejected" runat="server" ConnectionString='<%$ConnectionStrings: ProjectCS%>' SelectCommand="Select Title, Username, Comm from Projects inner join Comments on Projects.Id=Comments.Pid inner join Login on Login.Id=Comments.Uid where Comments.status = '0'"></asp:SqlDataSource>
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="false" DataSourceID="rejected" SkinID="gridviewSkin">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Developer Name" />
            <asp:BoundField DataField="Title" HeaderText="Project Name" />
            <asp:BoundField DataField="Comm" HeaderText="Comments" />
        </Columns>
    </asp:GridView>
</asp:Content>

