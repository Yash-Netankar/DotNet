<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="WebApp_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <link href="Css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>
                <asp:TextBox ID="welcome" runat="server" CssClass="wlcm" />
            </h1>
            <main>

                <div class="calculator_div">


                    <div class="calci">


                        <%--input div--%>
                        <section class="ip_div">
                            <asp:TextBox ID="screen" runat="server" AutoCompleteType="None" Enabled="false" cssClass="screen"/><br />
                            <asp:HiddenField ID="hiddenF" runat="server" Value="0"/>
                        </section>


                        <section class="sec1">
                            <asp:Button ID="Button1" Text="1" runat="server"   CssClass ="num_Btn" OnClick="Button1_Click"/>
                            <asp:Button ID="Button2" Text="2" runat="server"   CssClass ="num_Btn" OnClick="Button2_Click"/>
                            <asp:Button ID="Button3" Text="3" runat="server"   CssClass ="num_Btn" OnClick="Button3_Click"/>
                            <asp:Button ID="Button4" Text="4" runat="server"   CssClass ="num_Btn" OnClick="Button4_Click"/>
                            <asp:Button ID="Button5" Text="5" runat="server"   CssClass ="num_Btn" OnClick="Button5_Click"/>
                            <asp:Button ID="Button6" Text="6" runat="server"   CssClass  ="num_Btn" OnClick="Button6_Click"/>
                            <asp:Button ID="Button7" Text="7" runat="server"   CssClass ="num_Btn" OnClick="Button7_Click"/>
                            <asp:Button ID="Button8" Text="8" runat="server"  CssClass ="num_Btn" OnClick="Button8_Click"/> 
                            <asp:Button ID="Button9" Text="9" runat="server"  CssClass ="num_Btn" OnClick="Button9_Click"/>
                            <asp:Button ID="cancel" Text="C" runat="server"  CssClass ="num_Btn" OnClick="Cancel_Click"/>
                            <asp:Button ID="Button0" Text="0" runat="server" CssClass ="num_Btn" OnClick="Button0_Click"/>
                            <asp:Button ID="Equal" Text="=" runat="server"  CssClass ="num_Btn" OnClick="Equal_Click"/>

                        </section>

                        <%--buttons--%>
                            <section class="sec2">
                                <asp:Button ID="Add_Btn" Text="+" runat="server"   CssClass="num_Btn" OnClick="Add_Btn_Click"/>
                                <asp:Button ID="Sub_Btn" Text="-" runat="server"   CssClass ="num_Btn" OnClick="Sub_Btn_Click"/>
                                <asp:Button ID="Mul_Btn" Text="x" runat="server"   CssClass ="num_Btn" OnClick="Mul_Btn_Click" />
                                <asp:Button ID="Div_Btn" Text="/" runat="server"   CssClass ="num_Btn" OnClick="Div_Btn_Click"/>
                            </section>


                    </div>
                </div>
            </main>
        </div>
    </form>

    <%--<script src="calc.js" type="text/javascript"></script>--%>

</body>
</html>
