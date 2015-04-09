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

                    DropDownList1.DataSource = new CursoAddDAO().CarregarDropDownList(Request.QueryString["COD_CURSO"]);
                    DropDownList1.DataTextField = "TITULO_LICAO";
                    DropDownList1.DataValueField = "COD_LICAO";
                    DropDownList1.DataBind();
                    DropDownList1.Items.Add(new ListItem("Selecione uma Lição", "0"));
                    DropDownList1.SelectedValue = "0";
                }
                catch
                {
                    Response.Redirect("Buscar.aspx");

                }

            }


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            if (MultiView1.ActiveViewIndex < 0 && MultiView1.ActiveViewIndex <= 1)
            {
                MultiView1.ActiveViewIndex += 1;
            }
            DropDownList1.DataValueField = DropDownList1.SelectedValue;
            FormView1.DataSource = new CursoAddDAO().ExibirCurso(DropDownList1.DataValueField);
            FormView1.DataBind();

        }
    }
}