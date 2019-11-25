using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Engleasy
{
    class Conquista
    {

        private int _id;
        public int id
        {
            get { return _id; }
            set { _id = value; }
        }

        private int _idUsr;
        public int idUsr
        {
            get { return _idUsr; }
            set { _idUsr = value; }
        }

        private string _conquistas;
        public string conquistas
        {
            get { return _conquistas; }
            set { _conquistas = value; }
        }
    }
}
