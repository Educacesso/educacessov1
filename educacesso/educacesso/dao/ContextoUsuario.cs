using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace educacesso.dao
{
    public class ContextoUsuario
    {
        /* Retorna usuário da sessão */
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
    }
}