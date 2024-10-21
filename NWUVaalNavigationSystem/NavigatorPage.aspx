<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NavigatorPage.aspx.cs" Inherits="Project_Group.NavigatorPage" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Navigator</title>
   <link rel="stylesheet" type="text/css" href="css/Navigator.css" />
   <style>
      /* Add CSS styles as needed */
   </style>
</head>
<body>
   <form id="form1" runat="server">
      <ul class="navigation">
         <li><a href="Defualt.aspx">Log-out</a></li> <!-- Link to LoginPage.aspx -->
          <li><a href="BuildingMap.aspx">Building-Map</a></li> <!-- Link to LoginPage.aspx -->
      </ul>

       <h1>NWU VTC Google Maps Navigator</h1>

       <p>On this navigation page, you can easily plan your journey. Please enter your starting point and destination in the respective fields,
           and our system will provide you with the best route and directions</p>

      <div class="map-panel">
         <input type="text" class="map-input" id="startingPoint" placeholder="Choose a starting point" />
         <input type="text" class="map-input" id="destinationPoint" placeholder="Choose a destination" />
         <button type="button" class="calculate-button" onclick="calculateRoute()">Calculate Route</button>
      </div>
      <div>
         <!-- Embed Google Maps iframe code here -->
         <iframe id="googleMap" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3563.5609753875956!2d27.875245088854975!3d-26.726468999999973!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1e9458e7570a36e9%3A0x28a614c263aed044!2sNorth-West%20University%20Vaal%20Triangle%20Campus!5e0!3m2!1sen!2sza!4v1693579739822!5m2!1sen!2sza" height="450" style="border-style: none; border-color: inherit; border-width: 0; width: 1264px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>
      <footer>
         <p>&copy; 2023 NWU VTC Navigator. All rights reserved.</p>
      </footer>

      <script>
          function calculateRoute() {
              var startingPoint = document.getElementById("startingPoint").value;
              var destinationPoint = document.getElementById("destinationPoint").value;

              if (startingPoint && destinationPoint) {
                  // Redirect to BuildingMap.aspx
                  window.location.href = "BuildingMap.aspx";
              } else {
                  // Handle validation or show an error message
                  alert("Please enter both starting and destination points.");
              }
          }
      </script>
   </form>
</body>
</html>


