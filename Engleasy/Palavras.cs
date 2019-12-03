using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Engleasy
{
    class Palavras
    {


        private int _id;
        public int id
        {
            get { return _id; }
            set { _id = value; }
        }

        private string _gp_palavra_ingles;
        public string gp_palavra_ingles
        {
            get { return _gp_palavra_ingles; }
            set { _gp_palavra_ingles = value; }
        }

        private string _gp_palavra_traducao;
        public string gp_palavra_traducao
        {
            get { return _gp_palavra_traducao; }
            set { _gp_palavra_traducao = value; }
        }
    }
}
