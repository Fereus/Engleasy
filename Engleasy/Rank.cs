using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Engleasy
{
    class Rank
    {

        private int _id;
        public int id
        {
            get { return _id; }
            set { _id = value; }
        }

        private string _Name;
        public string Name
        {
            get { return _Name; }
            set { _Name = value; }
        }

        private int _ponto;
        public int ponto
        {
            get { return _ponto; }
            set { _ponto = value; }
        }
    }
}
