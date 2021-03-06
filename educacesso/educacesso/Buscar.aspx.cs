﻿using System;
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
    public partial class Buscar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated != true)
                Response.Redirect("login.aspx");
        }

        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> GetConteudo(string prefixText)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("SELECT NOME_CURSO FROM tblCurso WHERE NOME_CURSO like @NAME+'%'", new ConnectionFactory().getConnection());
            cmd.Parameters.AddWithValue("@NAME", prefixText);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            List<string> lCursos = new List<string>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                lCursos.Add(dt.Rows[i][0].ToString());
            }
            return lCursos;
        }

        public void CarregarListView()
        {
            ListView.DataSource = new CursoAddDAO().Pesquisar(text1.Text);
            ListView.DataBind();
        }

      
       protected void ListView_SelectedIndexChanging(object sender, ListViewSelectEventArgs e)
        {
            ListView.SelectedIndex = e.NewSelectedIndex;
            int i = ListView.SelectedIndex;

            if (ListView.Items.Count > 0)
            {
                Label dtSimplesText = ListView.Items[i].FindControl("id_curso") as Label;
                
                int a = int.Parse(dtSimplesText.Text);
                Response.Redirect("Curso.aspx?COD_CURSO=" +a+"");

            }

       }

       protected void pesquisar_Click(object sender, EventArgs e)
       {
           CarregarListView();
       }

    }
}
