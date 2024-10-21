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
    public partial class HazardousReport : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            string databaseFilename = @"App_Data\VTC Navigation.mdf";
            string applicationPath = AppDomain.CurrentDomain.BaseDirectory;
            string connectionString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={Path.Combine(applicationPath, databaseFilename)};Integrated Security=True";

            // Provide values for the columns you want to insert
            string location = txtLocation.Text;
            string reportBy = txtReportBy.Text;
            string details = txtDetails1.Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // INSERT query to insert data into the Reports table
                string insertQuery = "INSERT INTO Reports (Location, ReportBy, Details) VALUES (@location, @reportBy, @details)";
                SqlCommand command = new SqlCommand(insertQuery, connection);

                // Add parameter values to the SQL command
                command.Parameters.AddWithValue("@location", location);
                command.Parameters.AddWithValue("@reportBy", reportBy);
                command.Parameters.AddWithValue("@details", details);

                // Execute the SQL command (INSERT)
                int rowsAffected = command.ExecuteNonQuery();

                // Check the number of rows affected (optional)
                if (rowsAffected > 0)
                {
                    Console.WriteLine("Data inserted successfully.");
                }
                else
                {
                    Console.WriteLine("No data was inserted.");
                }
            }


            // Redirect to a different page
            Response.Redirect("HazardousDisplay.aspx");

        }
    }
}