<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Defualt.aspx.cs" Inherits="Project_Group.Defualt" %>
<!--Nhlanhla Ndezi -35398698
Glen Mukota -37782002
Prince Matlakala -35651865
Amito Lali-34988068
Elariu Vuma - 37358294 -->

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Navigator-Home</title>
    <link rel="stylesheet" type="text/css" href="css/HomePage.css" />
</head>
<body>
    <form id="form2" runat="server">
         <ul class="navigation">
            <li><a href="#">Home</a></li>
            <li><a href="LoginPage.aspx">Login</a></li> <!-- Link to LoginPage.aspx -->
            <li><a href="SignUp.aspx">Sign-Up</a></li> <!-- Link to LoginPage.aspx --> 
             <li><a href="AdminLogin.aspx">Admin</a></li>

         </ul>
            <div class="content">
             <h1>Welcome to the NORTH-WEST UNIVERSITY Vaal Triangle Campus Navigation system.</h1>

            <!-- Horizontal image container for three images -->
    <div class="horizontal-images">
        <img src="images/eagi.jpg" alt="Image 1"/>.
        <img src="images/Welcomeimage.jpg" alt="Image 2"/>.
        <img src="images/maverick.jpg" alt="Image 3"/>.
    </div>

             <p>
        Welcome to the NORTH-WEST UNIVERSITY Vaal Triangle Campus Navigator, your personalized solution to effortless
        campus navigation. We understand that finding your way around a bustling campus can be challenging, and that's
        why we're here to help. Sign-up for account or login to use.
    </p>



            <h1>About Us</h1>

                 <!-- Horizontal pane for the video -->
            <div class="horizontal-pane">
                <video width="50%" controls=""/>
                    <source src="images/welcomeVideo.mp4" type="video/mp4"/>
                    Your browser does not support the video tag.
                
            </div>

             <p>
        The North-West University is one of the largest higher education institutions in South Africa with three
        campuses. The largest campus is the Potchefstroom campus, followed by the Mafikeng campus, and lastly the Vaal
        Triangle campus – the focus of our navigation system. At the Vaal Triangle campus, we strive to provide an
        exceptional navigation experience for our students, faculty, and visitors.
        </p>
          <p>
        Our navigation system assists users in finding their way around the campus, locating classrooms, offices,
        recreational areas, and various facilities. Whether you're a new student or a visitor, our system aims to make
        your time on campus more efficient and enjoyable.
          </p>
            </div>
        <footer>

             <p>&copy; 2023 NWU VTC Navigator. All rights reserved.</p>
        </footer>

    </form>
</body>
</html>
