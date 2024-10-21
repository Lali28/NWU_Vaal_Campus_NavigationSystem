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
    using System;
    using System.Data;
    using System.Web.UI;

    public partial class HazardousDisplay : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                BindGridView();
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
                    string query = "SELECT Location, ReportBy, Details FROM Reports";

                    using (SqlCommand cmd = new SqlCommand(query, connection))
                    {
                        connection.Open();

                        // Create a DataSet and DataAdapter
                        DataSet ds = new DataSet();
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                        // Fill the DataSet with data from the DataAdapter
                        adapter.Fill(ds, "Reports");


                        GridView3.DataSource = ds.Tables["Reports"];
                        GridView3.DataBind();

                    }
                }
            }
            catch (Exception)
            {

            }
        }
    }

}