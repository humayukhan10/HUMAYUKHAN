<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConferenceRegistration.aspx.cs" Inherits="Internal.ConferenceRegistration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Conference Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Conference Registration</h2>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

        <!-- Paper Title -->
        <label for="txtPaperTitle">Paper Title:</label><br />
        <asp:TextBox ID="txtPaperTitle" runat="server" Placeholder="Paper Title" /><br />
        <asp:RequiredFieldValidator ID="rfvPaperTitle" ControlToValidate="txtPaperTitle" 
            ErrorMessage="Paper Title is required." Text="*" runat="server" ForeColor="Red" /><br />

        <!-- Name -->
        <label for="txtName">Name:</label><br />
        <asp:TextBox ID="txtName" runat="server" Placeholder="Name" /><br />
        <asp:RequiredFieldValidator ID="rfvName" ControlToValidate="txtName" 
            ErrorMessage="Name is required." Text="*" runat="server" ForeColor="Red" /><br />

        <!-- Address -->
        <label for="txtAddress">Address:</label><br />
        <asp:TextBox ID="txtAddress" runat="server" Placeholder="Address" /><br />
        <asp:RequiredFieldValidator ID="rfvAddress" ControlToValidate="txtAddress" 
            ErrorMessage="Address is required." Text="*" runat="server" ForeColor="Red" /><br />

        <!-- State -->
        <label for="ddlState">State:</label><br />
        <asp:DropDownList ID="ddlState" runat="server">
            <asp:ListItem>Gujarat</asp:ListItem>
            <asp:ListItem>Maharashtra</asp:ListItem>
        </asp:DropDownList><br />

        <!-- Country -->
        <label for="ddlCountry">Country:</label><br />
        <asp:DropDownList ID="ddlCountry" runat="server">
            <asp:ListItem>India</asp:ListItem>
            <asp:ListItem>USA</asp:ListItem>
        </asp:DropDownList><br />

        <!-- Pincode -->
        <label for="txtPincode">Pincode:</label><br />
        <asp:TextBox ID="txtPincode" runat="server" Placeholder="Pincode" /><br />

        <!-- Gender -->
        <label>Gender:</label><br />
        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem Text="Male" Value="Male" />
            <asp:ListItem Text="Female" Value="Female" />
        </asp:RadioButtonList><br />

        <!-- Email -->
        <label for="txtEmail">Email:</label><br />
        <asp:TextBox ID="txtEmail" runat="server" Placeholder="Email" /><br />
        <asp:RegularExpressionValidator ID="revEmail" ControlToValidate="txtEmail" 
            ErrorMessage="Invalid email format." Text="Invalid Email" runat="server" 
            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ForeColor="Red" /><br />

        <!-- Phone -->
        <label for="txtPhone">Phone:</label><br />
        <asp:TextBox ID="txtPhone" runat="server" Placeholder="Phone" /><br />
        <asp:RegularExpressionValidator ID="revPhone" ControlToValidate="txtPhone" 
            ErrorMessage="Phone must be 10 digits." Text="Invalid Phone" runat="server" 
            ValidationExpression="^\d{10}$" ForeColor="Red" /><br />

        <!-- Affiliation -->
        <label for="txtAffiliation">Affiliation:</label><br />
        <asp:TextBox ID="txtAffiliation" runat="server" Placeholder="Affiliation" /><br />

        <!-- Payment Date -->
        <label for="txtPaymentDate">Payment Date:</label><br />
        <asp:TextBox ID="txtPaymentDate" runat="server" Placeholder="Payment Date" TextMode="Date" /><br />
        <asp:RequiredFieldValidator ID="rfvPaymentDate" ControlToValidate="txtPaymentDate" 
            ErrorMessage="Payment Date is required." Text="*" runat="server" ForeColor="Red" /><br />

        <!-- Payment ID -->
        <label for="txtPaymentID">Payment ID:</label><br />
        <asp:TextBox ID="txtPaymentID" runat="server" Placeholder="Payment ID" /><br />

        <!-- File Upload -->
        <label for="fuProof">Upload Proof of Payment:</label><br />
        <asp:FileUpload ID="fuProof" runat="server" /><br />

        <!-- Submit Button -->
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /><br /><br />

        <!-- GridView -->
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" />
    </form>
</body>
</html>
