using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace educacesso
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_logar_Click(object sender, EventArgs e)
        {
            string loginBanco = "";
            string SenhaBanco = "";

            SqlCommand cmd = new SqlCommand("SELECT USUARIO_ID, USUARIO_SENHA FROM Usuario WHERE USUARIO_ID=@NOME ", new ConnectionFactory().getConnection());
            cmd.Parameters.AddWithValue("@NOME", cNome.Text);
            SqlDataReader leitor = cmd.ExecuteReader();
            while (leitor.Read())
            {
                loginBanco = leitor["USUARIO_ID"].ToString();
                SenhaBanco = leitor["USUARIO_SENHA"].ToString();
            }

            if (this.cNome.Text == loginBanco && this.cSenha.Text == SenhaBanco)
            {

                FormsAuthentication.RedirectFromLoginPage(loginBanco, Persist.Checked);

            }
            else
            {
                msg_logar.Text ="Falha na autenticação";
                
            }
        }
    }
}