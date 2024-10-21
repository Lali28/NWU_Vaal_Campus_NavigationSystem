<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Project_Group.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Navigator-Home</title>
    <link rel="stylesheet" type="text/css" href="css/AdminLoginStyles.css" />
</head>
<body>
    <form id="form2" runat="server">
         <ul class="navigation">
             <li><a href="Defualt.aspx">Home</a></li> 

         </ul>
            <div class="content">
    <h1>NWU VTC Nagivator Administrator login.</h1>
        
            <%--<div class="content">--%>

            <div class="horizontal-images">
                <img src="images/th.jpeg" alt="Image 2" />
            </div>

 <div class="centered-content">
                <div class="form-group">
                    <label for="txtUsername">Username:</label>
                    <asp:TextBox ID="txtAdminName" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="txtPassword">Password:</label>
                    <asp:TextBox ID="txtAdminPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>

              <asp:Button ID="btnAdminLogin" runat="server" Text="Login" OnClick="btnAdminLogin_Click" />


                <!-- Display message div -->
                <div runat="server" id="loginMessage" class="message"></div>

               
            </div>

            </div>
        <footer>

             <p>&copy; 2023 NWU VTC Navigator. All rights reserved.</p>
        </footer>

    </form>
</body>
</html>
