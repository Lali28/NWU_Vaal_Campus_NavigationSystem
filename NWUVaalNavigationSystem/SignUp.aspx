

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Project_Group.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Navigator-SignUp</title>
    <link rel="stylesheet" type="text/css" href="css/SignUpStyles.css"/>   
</head>

<body>
    <form id="form1" runat="server">
        <ul class="navigation">
            <li><a href="Defualt.aspx">Home</a></li>
            <li><a href="LoginPage.aspx">Login</a></li>
        </ul>

        <div class="content">
   

<div class="centered-content">

     <h1>Sign Up</h1>

     <p>Welcome to the NWU VTC Navigator user sign up page. Create a new account to get started with our services. Fill out the required information below to register.</p>


     <div class="horizontal-images">
      <img src="images/th.jpeg" alt="Image 2" />
       </div>

   <h2>Create Username:</h2>
<div class="form-group">
    <label for="txtCreateUsername">Username:</label>
    <input type="text" id="txtCreateUsername" name="txtCreateUsername" runat="server" />
</div>

<h2>Create User ID:</h2>
<div class="form-group">
    <label for="txtCreateUserID">User ID:</label>
    <input type="text" id="txtCreateUserID" name="txtCreateUserID" runat="server" />
</div>

<h2>Create Password:</h2>
<div class="form-group">
    <label for="txtCreatePassword">Password:</label>
    <input type="password" id="txtCreatePassword" name="txtCreatePassword" runat="server" />
</div>

<h2>Confirm Password:</h2>
<div class="form-group">
    <label for="txtConfirmPassword">Confirm Password:</label>
    <input type="password" id="txtConfirmPassword" name="txtConfirmPassword" runat="server" />
</div>

<!-- Sign Up Button -->
<div class="signup-button">
    <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" CssClass="signup-button" />
</div>


    <!-- Display message div -->
    <div runat="server" id="Div1" class="message"></div>
</div>

         </div>

                <!-- Display message div -->
                <div runat="server" id="signupMessage" class="message"></div>
           

        <footer>
            <p>&copy; 2023 NWU VTC Navigator. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>
