using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace educacesso
{
    public partial class NovaLicao : System.Web.UI.Page
    {
        String codigoCurso;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated != true)
                Response.Redirect("login.aspx");

           codigoCurso = Request.QueryString["COD_CURSO"];

            titulo.Text = "Adicione uma lição no seu curso para compartilhar com outros usuários!";
            if (MultiView1.ActiveViewIndex < 0)
            {
                MultiView1.ActiveViewIndex += 1;
            }
        }

        protected void btn_avancar_Click(object sender, EventArgs e)
        {

            int aux = MultiView1.ActiveViewIndex += 1;

            if (aux > 3)
                btn_avancar.Visible = false;

        }


        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {
            try
            {


                new CursoAddDAO().CadastrarLicao(txt_Titulo.Text, CKEditorControl1.Text, codigoCurso);
                MultiView1.Visible = false;
                titulo.Text = "LIÇÃO ADICIONADA COM SUCESSO";
            }
            catch (Exception erx)
            {
                throw new Exception(erx.ToString());
            }
        }
    }
}