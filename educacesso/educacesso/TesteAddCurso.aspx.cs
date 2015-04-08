using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace educacesso
{
    public partial class TesteAddCurso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated != true)
                Response.Redirect("login.aspx");
            
            titulo.Text = "Crie um curso para compartilhar com outros usuários aqui !";
            if(MultiView1.ActiveViewIndex < 0)
            { 
            MultiView1.ActiveViewIndex += 1;
            }
        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {
            try
            {
               
               
                new CursoAddDAO().CadastraCurso(txt_Titulo.Text, txt_Resumo.Text, CKEditorControl1.Text);
                MultiView1.Visible = false;
                titulo.Text = "CURSO CADASTRADO COM SUCESSO";
            }
            catch (Exception erx)
            {
                throw new Exception(erx.ToString());
            }
        }

        protected void btn_avancar_Click(object sender, EventArgs e)
        {
            
            int aux = MultiView1.ActiveViewIndex +=1;
            if(aux >1)
            btn_avancar.Visible = false;
            
        }
    }
}