using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace educacesso
{
    public partial class Buscar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Script.Services.ScriptMethod()]
        [System.Web.Services.WebMethod]
        public static List<string> GetConteudo(string prefixText)
        {
            DataTable dt = new DataTable();
            //SqlCommand cmd = new SqlCommand("SELECT USUARIO_ID FROM Usuario WHERE USUARIO_ID like @NAME+'%'", new ConnectionFactory().getConnection());
            SqlCommand cmd = new SqlCommand("SELECT TITULO_CURSO FROM tblCurso WHERE TITULO_CURSO like @NAME+'%'", new ConnectionFactory().getConnection());
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

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            Carregar_Cursos();
        }

        void Carregar_Cursos()
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
                Label dtSimplesText = ListView.Items[i].FindControl("FirstNameLabel") as Label;
                lblteste.Text = dtSimplesText.Text;
               // ListView.Items.Clear();
            }

       }

    }
}
