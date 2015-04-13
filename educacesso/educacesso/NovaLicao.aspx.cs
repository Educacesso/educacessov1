﻿using System;
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
        String resposta_certa;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated != true)
                Response.Redirect("login.aspx");

           codigoCurso = Request.QueryString["COD_CURSO"];
           

            titulo.Text = "Adicione mais uma lição no seu curso para compartilhar com outros usuários!";
            if (MultiView1.ActiveViewIndex < 0)
            {
                MultiView1.ActiveViewIndex += 1;
            }
        }

        protected void btn_avancar_Click(object sender, EventArgs e)
        {

            int aux = MultiView1.ActiveViewIndex += 1;

            if (aux > 2)
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

        protected void btn_licao_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex += 1;
        }

        protected void btn_exercicio_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex +=4;
        }

        protected void btn_cadastrar_exercicio_Click(object sender, EventArgs e)
        {
            new CursoAddDAO().CadastrarExercicio(txt_Pergunta.Text, codigoCurso, txt_Resposta_A.Text, txt_Resposta_B.Text, txt_Resposta_C.Text, txt_Resposta_D.Text, resposta_certa);
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            string resposta = txt_Resposta_A.Text;
            Resposta_certa(resposta);
        }

        public void Resposta_certa(string resposta)
        {
            resposta_certa = resposta;
        }
    }
}