<%@ Page Title="Manage Orders" Language="C#" MasterPageFile="~/Admin_check.Master" AutoEventWireup="true" CodeBehind="AdminOrders.aspx.cs" Inherits="Agriculture_Equipment_Store.AdminOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container my-5">

        <h2 class="text-center mb-4"><i class="fa fa-shopping-cart"></i> Manage Orders</h2>

        <!-- Date Filter Card -->
        <div class="card p-4 mb-4 shadow-sm border-primary">
            <div class="row align-items-end">
                <div class="col-md-4">
                    <label class="form-label fw-bold" for="txtDate">Select Date</label>
                    <input type="date" id="txtDate" runat="server" class="form-control" />
                </div>
                <div class="col-md-2 mt-3 mt-md-0">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary w-100 fw-bold" OnClick="btnSearch_Click" />
                </div>
                <div class="col-md-2 mt-3 mt-md-0">
                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-outline-secondary w-100 fw-bold" OnClick="btnReset_Click" />
                </div>
            </div>
        </div>

        <!-- Order Details Card -->
        <asp:Panel ID="pnlOrderDetails" runat="server" CssClass="card shadow-sm mb-4 p-3 border-info" Visible="false">
            <h4 class="text-info mb-3"><i class="fa fa-info-circle"></i> Order Details</h4>
            <asp:GridView ID="gvOrderDetails" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover align-middle">
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("ImagePath") %>' Width="80px" Height="60px" Style="object-fit: contain;" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Product" />
                    <asp:BoundField DataField="Category" HeaderText="Category" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="Price" HeaderText="Price (₹)" DataFormatString="{0:N2}" />
                    <asp:BoundField DataField="Total" HeaderText="Total (₹)" DataFormatString="{0:N2}" />
                </Columns>
            </asp:GridView>
        </asp:Panel>

        <!-- Orders Grid Card -->
        <div class="card shadow-sm p-3 border-success">
            <h4 class="text-success mb-3"><i class="fa fa-list"></i> Orders List</h4>
            <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-hover align-middle"
                OnRowCommand="gvOrders_RowCommand">
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="Order ID" ReadOnly="True" />
                    <asp:BoundField DataField="CustomerName" HeaderText="Customer" ReadOnly="True" />
                    <asp:BoundField DataField="OrderDate" HeaderText="Order Date" DataFormatString="{0:dd/MM/yyyy}" ReadOnly="True" />
                    <asp:BoundField DataField="TotalAmount" HeaderText="Total (₹)" DataFormatString="{0:N2}" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Status">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>' CssClass='<%# GetStatusClass(Eval("Status").ToString()) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnView" runat="server" Text="View Details" CommandName="View" CommandArgument='<%# Eval("OrderID") %>' CssClass="btn btn-info btn-sm me-2" />
                            <asp:Button ID="btnComplete" runat="server" Text="Mark Complete" CommandName="Complete" CommandArgument='<%# Eval("OrderID") %>' CssClass="btn btn-success btn-sm" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

    </div>

</asp:Content>
