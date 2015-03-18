using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace educacesso.modelo
{
    public class Usuario : Pessoa
    {
        // Atributos
        private String login;

        public String Login
        {
            get { return login; }
            set { login = value; }
        }
        private String senha;

        public String Senha
        {
            get { return senha; }
            set { senha = value; }
        }


    }
}