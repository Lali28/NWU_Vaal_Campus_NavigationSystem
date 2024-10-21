<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Project_Group.LoginPage1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Navigator-Login</title>
    <link rel="stylesheet" type="text/css" href="css/LoginStyles.css" />
</head>

<body>
    <form id="form1" runat="server">
        <ul class="navigation">
            <li><a href="Defualt.aspx">Home</a></li>
            <li><a href="SignUp.aspx">Sign-Up</a></li>
        </ul>

        <div class="content">
            

            <div class="centered-content">

                <h1>NWU VTC Navigator User Login</h1>

                <p>You are currently on the NWU VTC Navigator user login page. Please enter your credentials to access your account.</p>


            <div class="horizontal-images">
                <img src="images/th.jpeg" alt="Image 2" />
            </div>

                <div class="form-group">
                    <label for="txtUsername">Username:</label>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="txtPassword">Password:</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                </div>

                <!-- Display message div -->
                <div runat="server" id="loginMessage" class="message"></div>

                <!-- Moved "Forgot Password?" link here -->
                <div class="forgot-password">
                    <a href="SignUp.aspx" id="lnkForgotPassword" runat="server">Forgot Password?</a>
                </div>
            </div>
        </div>

        <footer>
            <p>&copy; 2023 NWU VTC Navigator. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>
