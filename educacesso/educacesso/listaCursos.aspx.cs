using PortalEducacesso.dao;
using PortalEducacesso.modelo;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
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

        SqlConnection conn;
        SqlCommand cmd;
        DataSet ds = new DataSet();

        private String selecionada;

        public String Selecionada
        {
            get { return selecionada; }
            set { selecionada = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Preenche o dropdown de categorias
            conn = new ConnectionFactory().getConnection();
            cmd = conn.CreateCommand();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.CommandText = "SELECT * FROM curso";
            da.Fill(ds);
            dropCategorias.DataTextField = ds.Tables[0].Columns["ctCurso"].ToString();
            dropCategorias.DataValueField = ds.Tables[0].Columns["cdCurso"].ToString();
            dropCategorias.DataSource = ds.Tables[0];
            dropCategorias.DataBind();
        }

        private void carregaCursos()
        {
            // Preenche o dropdown de cursos  
            conn = new ConnectionFactory().getConnection();
            cmd = conn.CreateCommand();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.CommandText = "SELECT * FROM curso WHERE ctCurso = ' " + Selecionada + " ' ";
            da.Fill(ds);
            dropCursos.DataTextField = ds.Tables[0].Columns["nmCurso"].ToString();
            dropCursos.DataValueField = ds.Tables[0].Columns["cdCurso"].ToString();
            dropCursos.DataSource = ds.Tables[0];
            dropCursos.DataBind();
        }

        protected void dropCategorias_SelectedIndexChanged(object sender, EventArgs e)
        {
            Selecionada = dropCategorias.Text;
            // carregaCursos(); 
        }

        protected void txtPesquisa_TextChanged(object sender, EventArgs e)
        {
            cdao.Search("nmCurso", txtPesquisa.Text);
        }
    }
}