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
    public partial class Curso : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated != true)
                Response.Redirect("login.aspx");

            if (!IsPostBack)
            {

                try
                {
                    
                  //  labelcurso.Text = Request.QueryString["COD_CURSO"];
                    FormView1.DataSource = new CursoAddDAO().ExibirCurso(Request.QueryString["COD_CURSO"]);
                    FormView1.DataBind();
                }
                catch (Exception erx)
                {
                    throw erx;
                    
                }

            }
        }
    }
}