using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using educacesso.dao;


namespace educacesso
{
    public class CursoAddDAO
    {
        public string Codigo { get; set; }
        public string Titulo { get; set; }
        public string Resumo { get; set; }
        public string Conteudo { get; set; }
        public int Contador { get; set; }
        public int Gostei { get; set; }

        public void CadastraCurso(String nome, String titulo, String resumo, String conteudo)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO tblCurso(NOME_CURSO, RESUMO_CURSO, COD_USUARIO, dataCadastro) VALUES(@NOME, @RESUMO, @IDUSUARIO, @DATACADASTRO)", new ConnectionFactory().getConnection());
                cmd.Parameters.AddWithValue("@NOME", nome);
                cmd.Parameters.AddWithValue("@RESUMO", resumo);
                cmd.Parameters.AddWithValue("@IDUSUARIO", buscarUsuario());
                cmd.Parameters.AddWithValue("@DATACADASTRO", DateTime.Now);
                cmd.ExecuteNonQuery();
                if (titulo !="" || conteudo !="")
                    CadastrarLicao(titulo, conteudo, buscarCurso(nome)); // CADASTRAR 1° LICAO
            }
            catch (Exception erx)
            {//"Ocorreu um erro inesperado";//erx.ToString()
                throw new Exception(erx.ToString());
            }

        }

        public void CadastrarLicao(string titulo, string conteudo, string cod)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO tblLicao(TITULO_LICAO, CONTEUDO_LICAO, COD_CURSO) VALUES(@TITULO, @CONTEUDO, @COD)", new ConnectionFactory().getConnection());
                cmd.Parameters.AddWithValue("@TITULO", titulo);
                cmd.Parameters.AddWithValue("@CONTEUDO", conteudo);
                cmd.Parameters.AddWithValue("@COD", cod);
                cmd.ExecuteNonQuery();

            }
            catch (Exception erx)
            {

                throw new Exception(erx.ToString());
            }

        }


        public void CadastrarExercicio(string pergunta, string resposta_a, string resposta_b, string resposta_c, string resposta_d, byte correta)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO tblExercicio(PERGUNTA_EXERCICIO, RESPOSTA_A, RESPOSTA_B, RESPOSTA_C, RESPOSTA_D, CORRETA) " +
                "VALUES(@PERGUNTA, @EXERCICIO, @RESPOSTA_A, @RESPOSTA_B, @RESPOSTA_C, RESPOSTA_D, CORRETA)", new ConnectionFactory().getConnection());

            cmd.Parameters.AddWithValue("@PERGUNTA", pergunta);
            cmd.Parameters.AddWithValue("@RESPOSTA_A", resposta_a);
            cmd.Parameters.AddWithValue("@RESPOSTA_B", resposta_b);
            cmd.Parameters.AddWithValue("@RESPOSTA_C", resposta_c);
            cmd.Parameters.AddWithValue("@RESPOSTA_D", resposta_d);
            cmd.Parameters.AddWithValue("@CORRETA", correta);

        }

        public void DeletarCurso(int index)
        {
            SqlCommand cmd = new SqlCommand("DELETE tblLicao FROM tblLicao INNER JOIN tblCurso ON tblLicao.COD_CURSO = tblCurso.COD_CURSO WHERE tblCurso.COD_CURSO = @COD", new ConnectionFactory().getConnection());
            cmd.Parameters.AddWithValue("@COD", index);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("DELETE tblCurso WHERE COD_CURSO = @COD", new ConnectionFactory().getConnection());
            cmd.Parameters.AddWithValue("@COD", index);
            cmd.ExecuteNonQuery();
        }

        public String buscarCurso(string nome)
        {
            SqlCommand cmd = new SqlCommand("SELECT COD_CURSO FROM TBLCURSO WHERE NOME_CURSO=@NOME", new ConnectionFactory().getConnection());
            cmd.Parameters.AddWithValue("@NOME", nome);

            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (dr.Read())
            {
                Codigo = dr["COD_CURSO"].ToString();

            }
            return Codigo;

        }


        public String buscarUsuario()
        {
            SqlCommand cmd = new SqlCommand("SELECT COD_USUARIO FROM USUARIO WHERE USUARIO_ID=@NOME", new ConnectionFactory().getConnection());
            cmd.Parameters.AddWithValue("@NOME", ContextoUsuario.CurrentUserName);

            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (dr.Read())
            {
                Codigo = dr["COD_USUARIO"].ToString();

            }
            return Codigo;

        }

        public DataSet Pesquisar(string _txtpesq) //Pagina 
        {
            return new ConnectionFactory().AbrirTabela("SELECT * FROM tblCurso WHERE NOME_CURSO LIKE '%" + _txtpesq + "%'");
        }

        public DataSet ExibirCurso(string cod) //Pagina Curso
        {
            return new ConnectionFactory().AbrirTabela("SELECT * FROM tblCurso INNER JOIN tblLicao ON tblCurso.COD_CURSO = tblLicao.COD_CURSO WHERE tblLicao.COD_LICAO=" + cod);
        }

        public DataSet CarregarDropDownList(string codCurso)
        {
            return new ConnectionFactory().AbrirTabela("SELECT * FROM tblLicao WHERE COD_CURSO =" + codCurso);
        }


    }
}