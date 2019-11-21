using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Engleasy
{
    class Usuario
    {
        private int _id;
        public int id
        {
            get { return _id; }
        }

        private string _username;
        public string username
        {
            get { return _username; }
            set { _username = value; }
        }

        private string _email;
        public string email
        {
            get { return _email; }
            set { _email = value; }
        }

        private string _password;
        public string password
        {
            get { return _password; }
            set { _password = value; }
        }
    }
}
