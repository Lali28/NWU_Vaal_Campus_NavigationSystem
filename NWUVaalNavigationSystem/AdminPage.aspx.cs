using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.IO;

namespace Project_Group
{
    public partial class AdminPage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
                BindGridView1();
            }
        }



        private void BindGridView()
        {
            string databaseFilename = @"App_Data\VTC Navigation.mdf";
            string applicationPath = AppDomain.CurrentDomain.BaseDirectory;
            string connectionString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={Path.Combine(applicationPath, databaseFilename)};Integrated Security=True";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "SELECT * FROM Reports";

                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        connection.Open();

                        // Create a DataSet and DataAdapter
                        DataSet ds = new DataSet();
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                        // Fill the DataSet with data from the DataAdapter
                        adapter.Fill(ds, "Reports");

                       
                            GridView1.DataSource = ds.Tables["Reports"];
                            GridView1.DataBind();
                       
                    }
                }
            }
            catch (Exception)
            {

            }
        }

        private void BindGridView1()
        {
            string databaseFilename = @"App_Data\VTC Navigation.mdf";
            string applicationPath = AppDomain.CurrentDomain.BaseDirectory;
            string connectionString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={Path.Combine(applicationPath, databaseFilename)};Integrated Security=True";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "SELECT * FROM UserCredentials";

                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        connection.Open();

                        // Create a DataSet and DataAdapter
                        DataSet ds = new DataSet();
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                        // Fill the DataSet with data from the DataAdapter
                        adapter.Fill(ds, "UserCredentials");


                        GridView2.DataSource = ds.Tables["UserCredentials"];
                        GridView2.DataBind();

                    }
                }
            }
            catch (Exception)
            {

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string databaseFilename = @"App_Data\VTC Navigation.mdf";
            string applicationPath = AppDomain.CurrentDomain.BaseDirectory;
            string connectionString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={Path.Combine(applicationPath, databaseFilename)};Integrated Security=True";

            string reportID = txtReportID.Text;
            string moreDetails = txtMoreDetails.Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Update the data in the database
                string updateQuery = "UPDATE Reports SET Details = @details WHERE ReportID LIKE @reportedID ";
                SqlCommand command = new SqlCommand(updateQuery, connection);
                command.Parameters.AddWithValue("@details", moreDetails);
                command.Parameters.AddWithValue("@reportedID", "%" + reportID + "%"); // Adjust this based on your SQL database's wildcard character
                command.ExecuteNonQuery();


            }

            if (IsPostBack)
            {
                BindGridView();
                BindGridView1();
            }
        }


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string databaseFilename = @"App_Data\VTC Navigation.mdf";
            string applicationPath = AppDomain.CurrentDomain.BaseDirectory;
            string connectionString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={Path.Combine(applicationPath, databaseFilename)};Integrated Security=True";

            string reportID = txtReportID.Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Delete the row from the database
                string deleteQuery = "DELETE FROM Reports WHERE ReportID = @reportID";
                SqlCommand command = new SqlCommand(deleteQuery, connection);
                command.Parameters.AddWithValue("@reportID", reportID);
                command.ExecuteNonQuery();
            }

            if (IsPostBack)
            {
                BindGridView();
                BindGridView1();
            }

        }

        protected void btnDeleteUsers_Click(object sender, EventArgs e)
        {
            string databaseFilename = @"App_Data\VTC Navigation.mdf";
            string applicationPath = AppDomain.CurrentDomain.BaseDirectory;
            string connectionString = $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={Path.Combine(applicationPath, databaseFilename)};Integrated Security=True";

            string reportID = deleteUserID.Text;
            string username = deleteUsername.Text;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Delete the row from the database
                string deleteQuery1 = "DELETE FROM UserCredentials WHERE userId = @iD AND userName = @Username";
                SqlCommand command = new SqlCommand(deleteQuery1, connection);
                command.Parameters.AddWithValue("@iD", reportID);
                command.Parameters.AddWithValue("@Username", username);
                command.ExecuteNonQuery();

            }

            if (IsPostBack)
            {
                BindGridView();
                BindGridView1();
            }

        }




    }
}
