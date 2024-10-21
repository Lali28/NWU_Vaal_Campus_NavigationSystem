<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HazardousReport.aspx.cs" Inherits="Project_Group.HazardousReport" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hazardous Area Report</title>
    <link rel="stylesheet" type="text/css" href="css/AdminStyles.css" />
    <style>
        /* Your existing CSS styles here */
        .content {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <ul class="navigation">
            <li><a href="Defualt.aspx">Home</a></li>
        </ul>

        <div class="content">
            <h1>Hazardous Area Report</h1>

            <p>Welcome to our Hazardous Area Reporting platform. Your safety and the safety of others are of utmost importance to us. Please use this platform to report any hazardous areas you encounter, helping us create a safer environment for all. Your reports are confidential, and your contribution is highly valued. Thank you for your commitment to safety.</p>


            <h2>Details of The Hazard:</h2>



          <div class="row">
      <div class="content">
    <!-- Controls -->

    <div class="form-group">
        <label for="ReportBy">Report by:</label>
        <asp:TextBox ID="txtReportBy" runat="server"></asp:TextBox>
       
    </div>

    <div class="form-group">
        <label for="Location">Location:</label>
        <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
       
    </div>

    <div class="form-group">
        <label for="moreDetails">Enter hazardous area details:</label>
        <asp:TextBox runat="server" ID="txtDetails1" TextMode="MultiLine" Rows="4" Columns="40"></asp:TextBox>
    </div>

<div class="form-group">
 <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click"/>

</div>
</div>
    </div>
        </div>

        <footer>
            <p>&copy; 2023 NWU VTC Navigator. All rights reserved.</p>
        </footer>

       

    </form>
</body>
</html>
