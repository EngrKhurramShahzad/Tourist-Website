using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace webASP
{
    public class dbconnection
    {
        SqlConnection conn;
        SqlCommand cmd;
        public dbconnection()
        {

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            conn = new SqlConnection(connectionString);

        }

        public DataTable getData(string sqlQuery)
        {
            DataTable dt = new DataTable();

            conn.Open();
            cmd = new SqlCommand(sqlQuery, conn);
            dt.Load(cmd.ExecuteReader());
            conn.Close();

            return dt;
        }

        public bool iud(string sqlQuery)
        {
            //++++++++++++++++update++++++++++++++++
            //            UPDATE employee SET  
            //First_name = @first_name, last_name = @last_name, salary = @salary,  
            //city = @city  
            //WHERE id = @id 
            //+++++++++++++++++insert+++++++++++++++++
            //insert into employee (id,first_name,last_name,salary,city) values( @id, @first_name, @last_name, @salary, @city)
            bool b = false;
            conn.Open();
            cmd = new SqlCommand(sqlQuery, conn);
            int check = cmd.ExecuteNonQuery();
            conn.Close();
            if (check > 0)
            {
                b = true;
            }
            else
            {
                b = false;

            }

            return b;
        }

        public bool checkData(string columnName, string query)
        {
            //"select * from Login where userName='" + userName + "'"
            DataTable dt = new DataTable();
            bool check = false;
            dt = getData(query);
            if (dt.Rows.Count > 0)
            {
                check = true;
            }
            else
            {
                check = false;
            }
            return check;
        }
    }
}