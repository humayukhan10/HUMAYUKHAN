<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="aau.aspx.cs" Inherits="Work.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   Department: <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="deptname" DataValueField="deptid" AutoPostBack="True"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [DEPT]"></asp:SqlDataSource>
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="empid" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="empid" HeaderText="empid" ReadOnly="True" SortExpression="empid" />
            <asp:BoundField DataField="empName" HeaderText="empName" SortExpression="empName" />
            <asp:BoundField DataField="empSurname" HeaderText="empSurname" SortExpression="empSurname" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [emp] WHERE ([empid] = @empid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="empid" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
