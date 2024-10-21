using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Project_Group
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Add any necessary initialization code here.
        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            //string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mukot\OneDrive\Desktop\Project_Group\App_Data\VTC Navigation.mdf;Integrated Security=True";
            string databaseFilename = @"App_Data\VTC Navigation.mdf";
            string applicationPath = AppDomain.CurrentDomain.BaseDirectory;
            string connectionString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={Path.Combine(applicationPath, databaseFilename)};Integrated Security=True";

            string username = txtCreateUsername.Value;
            string password = txtCreatePassword.Value;
            string userID = txtCreateUserID.Value; // Get the User ID value from the textbox

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Check if the username already exists in the database
                string checkQuery = "SELECT COUNT(*) FROM UserCredentials WHERE Username = @Username";
                SqlCommand checkCommand = new SqlCommand(checkQuery, connection);
                checkCommand.Parameters.AddWithValue("@Username", username);

                int count = (int)checkCommand.ExecuteScalar();

                if (count == 0)
                {
                    // Insert the new user's credentials into the database
                    string insertQuery = "INSERT INTO UserCredentials (Username, Password, UserID) VALUES (@Username, @Password, @UserID)";
                    SqlCommand insertCommand = new SqlCommand(insertQuery, connection);
                    insertCommand.Parameters.AddWithValue("@Username", username);
                    insertCommand.Parameters.AddWithValue("@Password", password);
                    insertCommand.Parameters.AddWithValue("@UserID", userID);

                    int rowsAffected = insertCommand.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Successful sign-up
                        signupMessage.InnerText = "Successfully added your credentials to the system.";
                        signupMessage.Attributes["class"] = "success-message";
                    }
                    else
                    {
                        // Error during sign-up
                        signupMessage.InnerText = "An error occurred during sign-up. Please try again.";
                        signupMessage.Attributes["class"] = "error-message";
                    }
                }
                else
                {
                    // Username already exists
                    signupMessage.InnerText = "Username already exists. Please choose a different username.";
                    signupMessage.Attributes["class"] = "error-message";
                }
            }
        }
    }
}
