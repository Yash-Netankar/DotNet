<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ERPAssignmentModule.Default"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <%--bootstrap css--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />


      <style>
        .captcha_container{
            width:100%;
            display:flex;
            align-items:center;
            justify-content:space-between;
        }
        .captchaSec1{
            flex:.70;
        }
        .captchaSec1 #captcha{
            width:50%;
        }
        .captchaSec2{
            text-align:center;
        }
        .captchaSec2 #captcha_div{
            background-color:green;
            color:white;
            font-size:1.1rem;
            letter-spacing:2px;
            font-weight:600;
            padding:8px 16px;
        }
    </style>

</head>
<body>



    <form id="form1" runat="server">

        <div class="container w-50 border p-3 ">

            <h4 class="text-center">Login</h4>
            <hr/>


            <%-- Error Showing Div--%>
            <asp:Panel ID="err_panel" runat="server" Visible="false">
                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                    <strong>Error! </strong>
                    <p id="err_label" runat="server" style="display:inline;"></p>
                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                </div>
           </asp:Panel>

            <%--login form starts here--%>
            <%--dropdown--%>
            <div class="mb-3">
                <label for="ddl_userType" class="form-label">Login As</label><br />
                <asp:DropDownList ID="ddl_userType" runat="server">
                    <asp:ListItem Text="---Select User Type---" Value="0" Selected="True" />
                    <asp:ListItem Text="Student" Value="1" />
                    <asp:ListItem Text="Staff" Value="2" />
                    <asp:ListItem Text="Admin" Value="3" />
                </asp:DropDownList><br/>
                <asp:RequiredFieldValidator ID="ddl_userTypeV" runat="server" ControlToValidate="ddl_userType" ErrorMessage="Select Proper User" InitialValue="0" ForeColor="Red" Display="Dynamic" ValidationGroup="loginGrp"/>
            </div>

            <%--userID--%>
            <div class="mb-3">
                <label for="userID" class="form-label">User ID</label>
                <asp:TextBox CssClass="form-control" ID="userID" runat="server" />
                <asp:RequiredFieldValidator ID="userIDV" ControlToValidate="userID" runat="server" ErrorMessage="Please enter User-Id" ForeColor="Red" Display="Dynamic" ValidationGroup="loginGrp"/>
            </div>

            <%--Password--%>
            <div class="mb-3">
                <label class="form-check-label" for="pass">Password</label>
                <asp:TextBox TextMode="Password" CssClass="form-control" ID="pass" runat="server" />
                <asp:RequiredFieldValidator ID="passV" ControlToValidate="pass" runat="server" ErrorMessage="Please enter password" ForeColor="Red" Display="Dynamic" ValidationGroup="loginGrp"/>
            </div>

            <%--captcha--%>
            <div class="mb-3 captcha_container" style="display:flex;flex-direction:column;align-items:flex-start;">
                    <div class="captchaSec1 col-8" style="display:flex;">
                        <div class="col-8">
                            <label class="form-check-label" for="captcha">Enter Captcha</label>
                            <asp:TextBox ID="captcha" runat="server" CssClass="form-control" />
                        </div>
                        <div class="captchaSec2 mt-3">
                            <div id="captcha_div" runat="server" />
                        </div>
                    </div>
                <div>
                    <asp:RequiredFieldValidator ID="captchaV" ControlToValidate="captcha" ErrorMessage="Enter Captcha" ForeColor="Red" runat="server" Display="Dynamic" ValidationGroup="loginGrp"/>
                </div>
            </div>


            <%--remember me--%>
            <div class="mb-3">
                <asp:CheckBox ID="rememberMe" runat="server" Text="Remember Me"/>
            </div>


            <%--Login Button--%>
            <div class="col d-flex justify-content-between">
                <asp:Button ID="LoginBtn" type="submit" CssClass="btn btn-primary px-3" runat="server" Text="Login" OnClick="LoginBtn_Click" ValidationGroup="loginGrp"/>
                <asp:LinkButton ID="forgetPassLink" Text="Forget Password?" runat="server" OnClientClick="return confirm('Are You sure you want to reset password')" OnClick="forgetPassLink_Click"/>
            </div>
        </div>
    </form>




    <%--bootstrap script--%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>
