using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GestionBiblio
{
    class users
    {
        protected int id;
        protected String nom;

        public users(int d, String n)
        {
            id = d;
            nom = n;
        }
        // setters
        public void setid(int d)
        {
            id = d;
        }
        public void setNom(String n)
        {
            nom = n;
        }
        // getters

        public String getNom()
        {
            return nom;
        }
    }
}
