using System;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace DatabaseComp
{
    public class DBUtil
    {
        private string connectionString;

        public DBUtil()
        {
            if (WebConfigurationManager.ConnectionStrings["id26346915"].ConnectionString == null)
            {
                throw new ApplicationException("Missing ConnectionString variable in web.config");
            }
            else
            {
                connectionString = WebConfigurationManager.ConnectionStrings["id26346915"].ConnectionString;
            }
        }



        internal protected DataSet FillDataSet(OleDbCommand cmd, string tableName)
        {
            OleDbConnection con = new OleDbConnection(connectionString);
            cmd.Connection = con;
            OleDbDataAdapter adapter = new OleDbDataAdapter(cmd);

            DataSet ds = new DataSet();
            try
            {
                con.Open();
                adapter.Fill(ds, tableName);
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

    }
}
