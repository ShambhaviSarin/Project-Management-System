<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search_res.aspx.cs" Inherits="_Default" Theme="Theme1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="approved" runat="server" ConnectionString='<%$ConnectionStrings: ProjectCS%>' SelectCommand="Select Title, Username, Comm from Projects inner join Comments on Projects.Id=Comments.Pid inner join Login on Login.Id=Comments.Uid where Comments.status = '1' and Username=@uname">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="value" Name="uname" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" DataSourceID="approved" SkinID="gridviewSkin">
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Developer Name" />
            <asp:BoundField DataField="Title" HeaderText="Project Name" />
            <asp:BoundField DataField="Comm" HeaderText="Comments" />
        </Columns>
    </asp:GridView>
</asp:Content>

