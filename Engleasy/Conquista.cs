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

        private int _conquistas;
        public int conquistas
        {
            get { return _conquistas; }
            set { _conquistas = value; }
        }

        private string _tipoConquistas;
        public string tipoConquistas
        {
            get { return _tipoConquistas; }
            set { _tipoConquistas = value; }
        }
    }
}
