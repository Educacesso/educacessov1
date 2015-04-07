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

        public void CadastraCurso(String _titulo, String _resumo, String _conteudo)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO tblCurso(TITULO_CURSO, RESUMO_CURSO, CONTEUDO_CURSO, COD_USUARIO, dataCadastro) VALUES(@TITULO, @RESUMO, @CONTEUDO, @IDUSUARIO, @DATACADASTRO)", new ConnectionFactory().getConnection());
                cmd.Parameters.AddWithValue("@TITULO", _titulo);
                cmd.Parameters.AddWithValue("@RESUMO", _resumo);
                cmd.Parameters.AddWithValue("@CONTEUDO", _conteudo);
                cmd.Parameters.AddWithValue("@IDUSUARIO", BuscarUsuario());
                cmd.Parameters.AddWithValue("@DATACADASTRO", DateTime.Now);
                cmd.ExecuteNonQuery();

            }
            catch (Exception erx)
            {//"Ocorreu um erro inesperado";//erx.ToString()
                throw new Exception(erx.ToString());
            }

        }


        public String BuscarUsuario()
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
            return new ConnectionFactory().AbrirTabela("SELECT * FROM tblCurso WHERE TITULO_CURSO LIKE '%" + _txtpesq + "%'");


        }
    }
}