using PortalEducacesso.dao;
using PortalEducacesso.modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class UsuarioDAO
{
    public string Codigo { get; set; }
    public string Nome { get; set; }
    public string Senha { get; set; }

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
            cmd.Parameters.Add(new SqlParameter("@senha", curso.Descricao));
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

    public string CadastrarUsuario(String _nome, String _senha)
    {
        try
        {

            if (BuscarUsuario(_nome) != "ID já Cadastrado")
            { 
            SqlCommand cmd = new SqlCommand("INSERT INTO Usuario(USUARIO_ID, USUARIO_SENHA) VALUES(@NOME, @SENHA)", new ConnectionFactory().getConnection());
            cmd.Parameters.AddWithValue("@NOME", _nome);
            cmd.Parameters.AddWithValue("@SENHA", _senha);
            cmd.ExecuteNonQuery();
            return "Cadastro Realizado Com Sucesso!! ";
            }
            else
            {
                return "Usuario Já Existente! :("; 
            }
        }
        catch (Exception erx)
        {//"Ocorreu um erro inesperado";//erx.ToString()
            throw new Exception(erx.ToString());
        }

    }

    public String BuscarUsuario(string _nome)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("SELECT USUARIO_ID FROM USUARIO WHERE USUARIO_ID=@NOME", new ConnectionFactory().getConnection());
            cmd.Parameters.AddWithValue("@NOME", _nome);

            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while(dr.Read())
            { 
            if(_nome == dr["USUARIO_ID"].ToString())
            {
                return _nome = "ID já Cadastrado";
            }

            }
            return _nome;
        }
        catch
        {
            return _nome;
        }
    }

}
