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
            SqlCommand cmd = new SqlCommand("SELECT USUARIO_ID FROM Usuario WHERE USUARIO_ID like @NAME+'%'", new ConnectionFactory().getConnection());
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
    }
}