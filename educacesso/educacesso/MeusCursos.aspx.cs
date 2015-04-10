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
    public partial class MeusCursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated != true)
                Response.Redirect("login.aspx");

            if (!Page.IsPostBack)
            {
                CarregarListView();

            }
        }

        public static string CurrentUserName
        {
            get
            {
                string userName = "";
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                    userName = HttpContext.Current.User.Identity.Name;
                return userName;
            }
        }


        public void CarregarListView()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblCurso WHERE COD_USUARIO=@COD", new ConnectionFactory().getConnection());
            cmd.Parameters.AddWithValue("@COD", new CursoAddDAO().buscarUsuario());

            ListView.DataSource = cmd.ExecuteReader(CommandBehavior.CloseConnection);
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
                Response.Redirect("NovaLicao.aspx?COD_CURSO=" + a + "");

            }

        }

  

        protected void ListView_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            ListView.SelectedIndex = e.ItemIndex;
            int i = ListView.SelectedIndex;
            if (ListView.Items.Count > 0)
            {
                Label dtSimplesText = ListView.Items[i].FindControl("id_curso") as Label;

                int index = int.Parse(dtSimplesText.Text);
                new CursoAddDAO().DeletarCurso(index);
                
                Response.Redirect("MeusCursos.aspx");
            }



        }
    }
}