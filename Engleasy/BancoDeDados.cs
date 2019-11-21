using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;

namespace Engleasy
{
    class BancoDeDados
    {

        private MySqlConnection _conn;
        public MySqlConnection conn
        {
            get { return _conn; }
        }

        private string _StrConn;
        public string StrConn
        {
            get { return _StrConn; }
        }


        public BancoDeDados()
        {
            // _StrConn = ConfigurationManager.ConnectionStrings["ProjetoBDConnectionString"].ConnectionString;
            _StrConn = ConfigurationManager.ConnectionStrings["ConnectionEngleaseLocal"].ConnectionString;
            _conn = new MySqlConnection(_StrConn);
        }

        public bool AbreConexao()
        {
            try
            {
                _conn.Open();
                return true;
            }
            catch
            {
                return false;
            }
        }


        public bool FechaConexao()
        {
            try
            {
                if (_conn.State == ConnectionState.Open)
                    _conn.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }





    }
}
