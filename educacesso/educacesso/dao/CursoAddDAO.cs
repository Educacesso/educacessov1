using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


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


        public static string CurrentUserName
        {
            get
            {
                string userName = "";
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                    userName = HttpContext.Current.User.Identity.Name;
                return userName;
            }
        }

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
                cmd = new SqlCommand("INSERT INTO tblLicao(TITULO_LICAO, CONTEUDO_LICAO, COD_CURSO) VALUES(@TITULO, @CONTEUDO, @COD)", new ConnectionFactory().getConnection());
                cmd.Parameters.AddWithValue("@TITULO", titulo);
                cmd.Parameters.AddWithValue("@CONTEUDO", conteudo);
                cmd.Parameters.AddWithValue("@COD", buscarCurso(nome));
                cmd.ExecuteNonQuery();
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
            cmd.Parameters.AddWithValue("@NOME", CurrentUserName);

            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);        
            while (dr.Read())
            {
                Codigo = dr["COD_USUARIO"].ToString();
               
            }
            return Codigo;

        }

        public DataSet Pesquisar(string _txtpesq)
        {
            return new ConnectionFactory().AbrirTabela("SELECT * FROM tblCurso WHERE NOME_CURSO LIKE '%" + _txtpesq + "%'");
        }

        public DataSet ExibirCurso(string cod)
        {
            return new ConnectionFactory().AbrirTabela("SELECT * FROM tblCurso INNER JOIN tblLicao ON tblCurso.COD_CURSO = tblLicao.COD_CURSO WHERE tblLicao.COD_LICAO=" + cod);
        }

        public DataSet CarregarDropDownList(string codCurso)
        {
            return new ConnectionFactory().AbrirTabela("SELECT * FROM tblLicao WHERE COD_CURSO ="+codCurso);
        }
    }
}