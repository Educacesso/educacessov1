using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace educacesso.modelo
{
    public class Pessoa
    {
        // Atributos
        private String nome;

        public String Nome
        {
            get { return nome; }
            set { nome = value; }
        }
        private String sobrenome;

        public String Sobrenome
        {
            get { return sobrenome; }
            set { sobrenome = value; }
        }

    }
}