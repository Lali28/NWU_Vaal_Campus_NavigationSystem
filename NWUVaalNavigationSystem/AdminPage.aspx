<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Project_Group.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Navigator-Home</title>
    <link rel="stylesheet" type="text/css" href="css/AdminStyles.css" />
</head>
<body>
    <form id="form2" runat="server">
         <ul class="navigation">
            <li><a href="Defualt.aspx">Home</a></li>

         </ul>

          <div class="content">
    <h1>NWU VTC Navigator Administrator.</h1>
<div class="row">
      <div class="content">

          <p>Welcome, Admin! You have the ability to manage reports here. To delete a report, simply enter the report ID in the designated field and click the "Delete" button. Please use this option with caution.
If you need to update a report, enter the report ID, make the necessary changes, and click the "Update" button. Ensure the information is accurate before saving your modifications.
Thank you for your responsible management of the reporting system.</p>


    <h2>Hazardous Area Report</h2>


    <div class="form-group">
        <label for="ReportId">Report ID:</label>
        <asp:TextBox ID="txtReportID" runat="server"></asp:TextBox>
       
    </div>

    

    <div class="form-group">
        <label for="moreDetails">Udpate hazardous area details:</label>
        <asp:TextBox runat="server" ID="txtMoreDetails" TextMode="MultiLine" Rows="4" Columns="40"></asp:TextBox>
    </div>

<div class="form-group">
 <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"/>
    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click"/>

</div>
   
            <!-- GridView goes here -->
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="custom-gridview">
            <Columns>

                <asp:BoundField DataField="ReportID" HeaderText="Report ID" />
                 <asp:BoundField DataField="Location" HeaderText="Location" />
                 <asp:BoundField DataField="ReportBy" HeaderText="Reported By" />
                <asp:BoundField DataField="Details" HeaderText="Details" />
         
            </Columns>
        </asp:GridView>
          <!--  f  -->
          
    <h1>NWU VTC Navigator Users Info.</h1>

          
          <p>To manage user accounts, Admins can delete a user by entering the User ID and username in the designated fields and clicking the 'Delete' button.
              Please use this option with caution, as it will permanently remove the user's account and data.</p>

          <!-- Controls -->
    <div class="form-group">
        <label for="userID">User ID:</label>
        <asp:TextBox ID="deleteUserID" runat="server"></asp:TextBox>
    </div>

    <div class="form-group">
        <label for="usernName">Username :</label>
        <asp:TextBox ID="deleteUsername" runat="server"></asp:TextBox>
    </div>


 <div class="form-group">
 <asp:Button ID="btnDeleteUsers" runat="server" Text="Delete" OnClick="btnDeleteUsers_Click"/>

</div>

           <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="custom-gridview">
            <Columns>

                <asp:BoundField DataField="UserID" HeaderText="User ID" />
                 <asp:BoundField DataField="userName" HeaderText="Username" />
                 <asp:BoundField DataField="Password" HeaderText="Password" />
         
            </Columns>
        </asp:GridView>

</div>
    </div>
              </div>
      
   
        <footer>

             <p>&copy; 2023 NWU VTC Navigator. All rights reserved.</p>
        </footer>

    </form>
</body>
</html>
