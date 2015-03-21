using PortalEducacesso.dao;
using PortalEducacesso.modelo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace educacesso.asp
{
    public partial class listaCursos : System.Web.UI.Page
    {
        CursoDAO cdao = new CursoDAO();
        Curso curso = new Curso();

        private void setForm(Curso curso)
        {
            dropCategorias.Text = curso.Nome;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}