<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordResetEmail.aspx.cs" Inherits="ERPAssignmentModule.PasswordResetEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Reset Email</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container border w-50 p-4">

             <div class="mb-3 mt-3">
                <label for="email" class="form-label">Your Registered Email</label>
                <asp:TextBox TextMode="Email" CssClass="form-control" ID="email" aria-describedby="emailHelp" runat="server" />
                <asp:RequiredFieldValidator ID="emailV" ControlToValidate="email" ErrorMessage="Email is required!" runat="server" ForeColor="Red" Display="Dynamic" />
            </div>

            <asp:Button ID="sendMail" Text="Send Mail" CssClass="btn btn-primary" runat="server" OnClientClick="return confirm('Are you sure you want to send mail on this address?')" OnClick="sendMail_Click"/>

            <br/>
            <asp:Label ID="forgetPasslbl" runat="server" />

        </div>
    </form>
</body>
</html>
