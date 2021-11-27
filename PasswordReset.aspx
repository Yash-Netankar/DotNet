<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordReset.aspx.cs" Inherits="ERPAssignmentModule.PasswordReset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <%--bootstrap css--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
</head>
<body>
    <div class="container w-50 border p-5 mt-5">
        <form id="form1" runat="server">
            
            <h4 class="text-center">Reset Pasword</h4>
            <hr/>

            <div class="mb-3 mt-3">
                <label for="pass" class="form-label">ERP ID</label>
                <asp:TextBox TextMode="Number" CssClass="form-control" ID="erpID" aria-describedby="emailHelp" runat="server" />
                <asp:RequiredFieldValidator ID="erpIDV" ControlToValidate="erpID" ErrorMessage="ERP ID is required!" runat="server" ForeColor="Red" Display="Dynamic" />
                <asp:RangeValidator ID="erpIDRV" ControlToValidate="erpID" ErrorMessage="Improper ERP ID" runat="server" ForeColor="Red" Display="Dynamic" MaximumValue="1000000" MinimumValue="1000" Type="Integer"/>
            </div>


            <div class="mb-3">
                <label for="pass" class="form-label">New Password</label>
                <asp:TextBox TextMode="Password" CssClass="form-control" ID="pass" aria-describedby="emailHelp" runat="server" />
                <asp:RequiredFieldValidator ID="passV" ControlToValidate="pass" ErrorMessage="Password is required!" runat="server" ForeColor="Red" Display="Dynamic" />
            </div>


            <div class="mb-3">
                <label for="cpass" class="form-label">Confirm New Password</label>
                <asp:TextBox TextMode="Password" CssClass="form-control" ID="cpass" aria-describedby="emailHelp" runat="server" />
                <asp:RequiredFieldValidator ID="cpassV" ControlToValidate="cpass" ErrorMessage="This Feild is required!" runat="server" ForeColor="Red" Display="Dynamic" />
                <asp:CompareValidator ID="passCompareV" ControlToValidate="pass" ControlToCompare="cpass" ErrorMessage="Passwords does not matched!" Display="Dynamic" runat="server" ForeColor="Red" />
            </div>


            <asp:Button ID="updatePassBtn" class="btn btn-primary" Text="Update Password" runat="server" OnClientClick="return confirm('Are you sure you want to update this password?')" OnClick="updatePassBtn_Click" />


            <div class="mb-3">
                <asp:Label ID="label1" runat="server" ForeColor="Green" />
            </div>
        </form>
    </div>
</body>








<%--bootstrap script--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</html>
