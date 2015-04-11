using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace educacesso
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            h1Info.Text = "Clique nos icones abaixo para obter informações";
            informacoes.Text = "";
        }

        protected void criarMeuCurso_Click(object sender, ImageClickEventArgs e)
        {
            informacoes.Text = "Você poderá criar cursos";
        }

        protected void meuCurso_Click(object sender, ImageClickEventArgs e)
        {
            informacoes.Text = "Você poderá ver seus cursos";
        }

        protected void pesquisarMeuCurso_Click(object sender, ImageClickEventArgs e)
        {
            informacoes.Text = "Você poderá pesquisar por cursos";
        }

        
    }
}