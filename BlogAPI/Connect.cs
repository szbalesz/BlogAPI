﻿using MySql.Data.MySqlClient;

namespace BlogAPI
{
    public class Connect
    {
        public MySqlConnection Connection { get; set; }
        public string ConnectionString { get; set; }
        private string Host;
        private string Database;
        private string User;
        private string Password;
        public Connect()
        {
            Host = "localhost";
            Database = "blog";
            User = "root";
            Password = "";
            ConnectionString = "SERVER=" + Host + ";DATABASE=" + Database + ";UID=" + User + ";PASSWORD=" + Password + ";SslMode=None";
            Connection = new MySqlConnection(ConnectionString);
        }
    }
}
