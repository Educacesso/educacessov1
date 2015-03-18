using PortalEducacesso.dao;
using PortalEducacesso.modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace educacesso.dao
{
    public class UsuarioDAO
    {
        // Atributos de referência
        private SqlConnection conn;
        private SqlCommand cmd;

        public void cadastrar(Curso curso)
        {
            conn = new ConnectionFactory().getConnection();
            try
            {
                String sql = "INSERT INTO usuario VALUES(@login, @senha)";
                cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;
                cmd.Parameters.Add(new SqlParameter("@login", curso.Nome));
                cmd.Parameters.Add(new SqlParameter("@senha", curso.Descricao))
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (SqlException erro)
            {
                throw new InvalidExpressionException("Erro ao cadastrar dados\nErro: " + erro.Message);
            }

            finally
            {
                conn.Close();
            }
        }
    }
}