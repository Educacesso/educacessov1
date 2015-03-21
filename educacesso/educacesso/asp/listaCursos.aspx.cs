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

        private void setForm(Curso curso)
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn;
            SqlCommand cmd;
            conn = new ConnectionFactory().getConnection();
            cmd = conn.CreateCommand();
            cmd.CommandText = "SELECT * FROM cursos";
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            dropCategorias.DataTextField = ds.Tables[0].Columns["nmCurso"].ToString();
            dropCategorias.DataValueField = ds.Tables[0].Columns["cdCurso"].ToString();
            dropCategorias.DataSource = ds.Tables[0];
            dropCategorias.DataBind();
        }
    }
}