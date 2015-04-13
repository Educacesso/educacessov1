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
        string resposta_correta = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated != true)
                Response.Redirect("login.aspx");

            if (IsPostBack != true)
            {

                titulo.Text = "Crie um curso para compartilhar com outros usuários aqui !";
                if (MultiView1.ActiveViewIndex < 0)
                {
                    MultiView1.ActiveViewIndex += 1;
                }
            }

        }

        protected void btn_cadastrar_Click(object sender, EventArgs e)
        {
            try
            {

                new CursoAddDAO().CadastraCurso(txt_nome.Text.Trim(), txt_Titulo.Text.Trim(), txt_Resumo.Text.Trim(), CKEditorControl1.Text.Trim());
               
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

            int aux = MultiView1.ActiveViewIndex += 1;

            if (aux > 4)
                btn_avancar.Visible = false;

        }

        protected void btn_pular_Click(object sender, EventArgs e)
        {

            MultiView1.ActiveViewIndex += 4;
            btn_avancar.Visible = false;


        }

        protected Boolean estadoPular(Boolean pular)
        {

            return pular;
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            resposta_correta = txt_Resposta_A.Text;
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            resposta_correta = txt_Resposta_B.Text;

        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            resposta_correta = txt_Resposta_C.Text;
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            resposta_correta = txt_Resposta_D.Text;
        }
    }
}