using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace Project_Group
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {

            //string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\mukot\OneDrive\Desktop\Project_Group\App_Data\VTC Navigation.mdf;Integrated Security=True";
            string databaseFilename = @"App_Data\VTC Navigation.mdf";
            string applicationPath = AppDomain.CurrentDomain.BaseDirectory;
            string connectionString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={Path.Combine(applicationPath, databaseFilename)};Integrated Security=True";

            string username = txtAdminName.Text;
            string password = txtAdminPassword.Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT COUNT(*) FROM AdminCredentials  WHERE Username = @Username AND Password = @Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", password);

                int count = (int)command.ExecuteScalar();

                if (count > 0)
                {
                    // Successful login
                    loginMessage.InnerText = "Login successful. Click on the 'Forgot Password?' link to reset your password.";
                    loginMessage.Attributes["class"] = "success-message";

                    // Redirect to NavigatorPage.aspx
                    Response.Redirect("AdminPage.aspx");
                }
                else
                {
                    // Invalid login
                    loginMessage.InnerText = "Invalid Password or Username.";
                    loginMessage.Attributes["class"] = "error-message";
                }
            }
        }
    }
    }