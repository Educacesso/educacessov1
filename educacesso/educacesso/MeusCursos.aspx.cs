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
            if (!Page.IsPostBack)
            {
                Carregar_Cursos();

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

        void Carregar_Cursos()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM tblCurso WHERE COD_USUARIO=@COD", new ConnectionFactory().getConnection());
            cmd.Parameters.AddWithValue("@COD", new CursoAddDAO().BuscarUsuario());

            gvw_cursos.DataSource = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            gvw_cursos.DataBind();

        }
     
     

        
            
        
        
        
    }
}