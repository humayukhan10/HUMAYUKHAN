<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DataBase.aspx.cs" Inherits="WebApplication1.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Enter ID:</td>
            <td><asp:TextBox ID="txtid" runat="server" TextMode="Number"></asp:TextBox></td>
        </tr>
    <tr>
    <td>Enter Nmae:</td>
    <td><asp:TextBox ID="txtnm" runat="server"></asp:TextBox></td>
     </tr>
  <tr>
      <td>Select A Gender:</td>
  <td><asp:RadioButton ID="rdoMale" runat="server" GroupName="Gender" Text="Male" />
<asp:RadioButton ID="rdoFemale" runat="server" GroupName="Gender" Text="Female" /></td>    

   
   
   </tr>
   <tr>
    <td>Enter Age:</td>
    <td><asp:TextBox ID="txtage" runat="server" TextMode="Number"></asp:TextBox></td>
    </tr>
  <tr>
    <td>Enter Rollnum:</td>
    <td><asp:TextBox ID="txtrollnum" runat="server" TextMode="Number"></asp:TextBox></td>
</tr>
  <tr>
    
    <td colspan="2" align="center">
        <asp:Button ID="INSERT" runat="server" Text="INSERT" OnClick="INSERT_Click" />&nbsp;<asp:Button ID="DELETE" runat="server" Text="DELETE" OnClick="DELETE_Click" />
        <asp:Button ID="UPDATE" runat="server" Text="UPDATE" OnClick="UPDATE_Click" />
      &nbsp;<asp:Button ID="Cancle" runat="server" Text="Cancle" OnClick="Cancle_Click" />
      </td>
</tr>
    </table>
    <asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:ButtonField CommandName="Select" HeaderText="select" ShowHeader="True" Text="select" />

        </Columns>
        <SelectedRowStyle BackColor="Yellow" ForeColor="Black" />
    </asp:GridView>
