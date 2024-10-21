<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HazardousDisplay.aspx.cs" Inherits="Project_Group.HazardousDisplay" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hazardous Area Report Display</title>
    <link rel="stylesheet" type="text/css" href="css/AdminStyles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <ul class="navigation">
            <li><a href="Defualt.aspx">Home</a></li>
            <li><a href="NavigatorPage.aspx">Navigator</a></li>
        </ul>

        <div class="content">
            <h1>Hazardous Area Report.</h1>

            <p>This page displays information about hazardous areas. Please use caution and follow safety guidelines when accessing or working in these areas.</p>

            <div class="custom-gridview-container">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CssClass="custom-gridview">
                    <Columns>
                        <asp:BoundField DataField="Location" HeaderText="Location" />
                        <asp:BoundField DataField="ReportBy" HeaderText="Reported By" />
                        <asp:BoundField DataField="Details" HeaderText="Details" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>

        <footer>
            <p>&copy; 2023 NWU VTC Navigator. All rights reserved.</p>
        </footer>
    </form>
</body>
</html>
