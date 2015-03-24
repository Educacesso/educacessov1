using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace PortalEducacesso.dao
{
    public class ConnectionFactory
    {
        private SqlConnection conn;

        public SqlConnection Conn
        {
            get { return conn; }
            set { conn = value; }
        }
        public SqlConnection getConnection()
        {
            try
            {
                conn = new SqlConnection("Data Source=a0ckgtrdxz.database.windows.net;Initial Catalog=educacesso;Persist Security Info=True;User ID=educacesso;Password=Educa102010");
                conn.Open();
                return conn;
            }
            catch (SqlException erro)
            {
                throw new NullReferenceException("Banco de dados não encontrado.");
            }
        }  
    }
}