<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="_Default" Theme="Theme1"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    WELCOME TO PROJECT MANAGEMENT SYSTEM ADMIN!
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
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
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/comments.aspx">View Comment</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="Btn1" runat="server" Text="CREATE" onclick="Btn1_Click"/><br />
    <asp:Button ID="Btn2" runat="server" Text="DEVELOPER COMMENTS" onclick="Btn2_Click"/><br/>
    <asp:Button ID="Btn3" runat="server" Text="DISPLAY" onclick="Btn3_Click"/><br />
    <asp:Button ID="Btn4" runat="server" Text="SEARCH" onclick="Btn4_Click"/><br />
    <asp:Button ID="Btn5" runat="server" Text="DELETE" onclick="Btn5_Click"/>
</asp:Content>

