using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

    public class ConnectionFactory
    {
        public string conexao = @"Data Source=a0ckgtrdxz.database.windows.net;Initial Catalog=educacesso;Persist Security Info=True;User ID=educacesso;Password=Educa102010";
      
        
        public SqlConnection getConnection()
        {
            try
            {
                SqlConnection conn = new SqlConnection(new ConnectionFactory().conexao);      
                conn.Open();
                return conn;
            }
            catch (SqlException erro)
            {
                throw new NullReferenceException("Banco de dados não encontrado." + erro);
            }
        }  
    }
