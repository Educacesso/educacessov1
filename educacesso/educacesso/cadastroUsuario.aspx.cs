using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace educacesso
{
    public partial class cadastroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            try
            {
               lblmsg.Text = new UsuarioDAO().CadastrarUsuario(cNome.Text, cSenha.Text);
            
            }
            catch (Exception erx)
            {
                throw new Exception(erx.ToString());
                

            }
        }
    }
}