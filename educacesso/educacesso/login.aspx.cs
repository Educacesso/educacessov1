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
           // msg_logar.Text = "Falha na autenticação";
            
        // msg_logar.Text = new UsuarioDAO().LogarUsuario(cNome.Text, cSenha.Text, Persist.Checked);
            if(new UsuarioDAO().LogarUsuario(cNome.Text, cSenha.Text, Persist.Checked) == true)
                FormsAuthentication.RedirectFromLoginPage(cNome.Text, Persist.Checked);
            else
                msg_logar.Text = "ID OU SENHA NÃO ENCONTRADO";
        }
    }
}