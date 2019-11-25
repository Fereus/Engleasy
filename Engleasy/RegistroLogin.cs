using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Engleasy
{
    class RegistroLogin
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

        private DateTime _registro;
        public DateTime registro
        {
            get { return _registro; }
            set { _registro = value; }
        }
    }
}
