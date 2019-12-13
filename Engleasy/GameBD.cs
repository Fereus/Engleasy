using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;

namespace Engleasy
{
    class GameBD
    {

        private object testeProjetoTableAdapter;
        private readonly object testeDataSet;
        private object a;



        public static string CalculateSHA1(string text, Encoding enc)
        {
            try
            {
                byte[] buffer = enc.GetBytes(text);
                System.Security.Cryptography.SHA1CryptoServiceProvider cryptoTransformSHA1 = new System.Security.Cryptography.SHA1CryptoServiceProvider();
                string hash = BitConverter.ToString(cryptoTransformSHA1.ComputeHash(buffer)).Replace("-", "");
                return hash;
            }
            catch (Exception x)
            {
                throw new Exception(x.Message);
            }
        }


        public void Incluir(Usuario a)
        {

            string cripPass = CalculateSHA1(a.password, Encoding.ASCII); 

            BancoDeDados bd = new BancoDeDados();
            bd.AbreConexao();

            MySqlCommand command = new MySqlCommand(null, bd.conn);
            command.CommandText = "INSERT INTO cad_user (usr_username,usr_email,usr_password) VALUES (@username,@email,@password)";
            MySqlParameter usernameParam = new MySqlParameter("@username", a.username);
            MySqlParameter emailParam = new MySqlParameter("@email", a.email);
            MySqlParameter passwordParam = new MySqlParameter("@password", cripPass);
           
         
            command.Parameters.Add(usernameParam);
            command.Parameters.Add(emailParam);
            command.Parameters.Add(passwordParam);
           

            command.Prepare();
            command.ExecuteNonQuery();

            bd.FechaConexao();


        }

       

        public MySqlDataReader login(Usuario usr)
        {
           
            string senha = CalculateSHA1(usr.password, Encoding.ASCII);
            Usuario a = new Usuario();
            BancoDeDados bd = new BancoDeDados();
            bd.AbreConexao();

            MySqlCommand command = new MySqlCommand(null, bd.conn);
            command.CommandText = "SELECT usr_id, usr_username, usr_email, usr_password FROM cad_user WHERE usr_username ='" + usr.username + "'and usr_password ='"+ senha+"'";

           
            command.Prepare();
            command.ExecuteNonQuery();
            MySqlDataReader ret = command.ExecuteReader();
            ret.Read();

            a.id = ret.GetInt32(0);
            a.username = ret.GetString(1);
            a.email = ret.GetString(2);
            a.password = ret.GetString(3);

            Usuario.SessionGame = a;
            


            bd.FechaConexao();

            return ret;
        }


        public void savePoints(Pontos a)
        {

         
            BancoDeDados bd = new BancoDeDados();
            bd.AbreConexao();

            MySqlCommand command = new MySqlCommand(null, bd.conn);
            command.CommandText = "INSERT INTO pontos (pt_usrId,pt_pontuacao) VALUES (@idUser,@pontos)";
            MySqlParameter idUsrParam = new MySqlParameter("@idUser", a.idUsr);
            MySqlParameter pontosParam = new MySqlParameter("@pontos", a.pontos);
           


            command.Parameters.Add(idUsrParam);
            command.Parameters.Add(pontosParam);
           
            command.Prepare();
            command.ExecuteNonQuery();

            bd.FechaConexao();


        }

      


        public void saveConquistas(Conquista a)
        {


            BancoDeDados bd = new BancoDeDados();
            bd.AbreConexao();

            MySqlCommand command = new MySqlCommand(null, bd.conn);
            command.CommandText = "INSERT INTO conquistas (cq_usrId,cq_idConquista) VALUES (@idUser,@conquistas)";
            MySqlParameter idUsrParam = new MySqlParameter("@idUser", a.idUsr);
            MySqlParameter conquistaParam = new MySqlParameter("@conquistas", a.conquistas);



            command.Parameters.Add(idUsrParam);
            command.Parameters.Add(conquistaParam);

            command.Prepare();
            command.ExecuteNonQuery();

            bd.FechaConexao();


        }

        public void updateConquistas(Conquista a)
        {

            try
            {
                BancoDeDados bd = new BancoDeDados();
                bd.AbreConexao();

                MySqlCommand command = new MySqlCommand(null, bd.conn);
                command.CommandText = "UPDATE conquistas SET cq_conquista = @conquistas WHERE cq_usrId = @idUser";
                MySqlParameter idUsrParam = new MySqlParameter("@idUser", a.idUsr);
                MySqlParameter conquistaParam = new MySqlParameter("@conquistas", a.conquistas);



                command.Parameters.Add(idUsrParam);
                command.Parameters.Add(conquistaParam);

                command.Prepare();
                command.ExecuteNonQuery();

                bd.FechaConexao();
            }
            catch (Exception)
            {
                this.saveConquistas(a);
            }

        }


        public void saveRegistroLogin(RegistroLogin a)
        {


            BancoDeDados bd = new BancoDeDados();
            bd.AbreConexao();

            MySqlCommand command = new MySqlCommand(null, bd.conn);
            command.CommandText = "INSERT INTO registro_login (rl_usrId,rl_data_registro) VALUES (@idUser,@registro)";
            MySqlParameter idUsrParam = new MySqlParameter("@idUser", a.idUsr);
            MySqlParameter registroParam = new MySqlParameter("@registro", a.registro);



            command.Parameters.Add(idUsrParam);
            command.Parameters.Add(registroParam);

            command.Prepare();
            command.ExecuteNonQuery();

            bd.FechaConexao();


        }


        public int getBestPointById(int id)
        {

            int pontos;
            Pontos a = new Pontos();
            BancoDeDados bd = new BancoDeDados();
            bd.AbreConexao();

            MySqlCommand command = new MySqlCommand(null, bd.conn);
            command.CommandText = "SELECT max(pt_pontuacao) FROM pontos WHERE pt_usrId ='" + id + "'";

         

            command.Prepare();
            command.ExecuteNonQuery();
            MySqlDataReader ret = command.ExecuteReader();
            ret.Read();

            pontos = ret.GetInt32(0);
          

            bd.FechaConexao();

            return pontos;
        }


        public List<Rank> getAllPontosAndUser()
        {


            List<Rank> listRank = new List<Rank>();
            Rank rank = new Rank();
            BancoDeDados bd = new BancoDeDados();
            bd.AbreConexao();
            int i = 0;

            MySqlCommand command = new MySqlCommand(null, bd.conn);
            command.CommandText = "SELECT c.usr_username, max(p.pt_pontuacao) FROM cad_user AS c JOIN pontos AS p ON c.usr_id = p.pt_usrId group by c.usr_username order by max(p.pt_pontuacao)";

           

            command.Prepare();
            command.ExecuteNonQuery();
            MySqlDataReader ret = command.ExecuteReader();
           

          
                while (ret.Read())
                {
                    rank.Name = ret.GetString(0);
                    rank.ponto = ret.GetInt32(1);
                    listRank.Add(rank);
                    rank = new Rank();
                    
                }
                
           

            bd.FechaConexao();

            return listRank;
        }


        public List<RegistroLogin> getLastLogin(int id)
        {

           
            RegistroLogin a = new RegistroLogin();
            List<RegistroLogin> l = new List<RegistroLogin>();
            BancoDeDados bd = new BancoDeDados();
            bd.AbreConexao();

            MySqlCommand command = new MySqlCommand(null, bd.conn);
            command.CommandText = "SELECT rl_data_registro FROM registro_login WHERE rl_usrId ='" + id + "'";

          
            command.Prepare();
            command.ExecuteNonQuery();
            MySqlDataReader ret = command.ExecuteReader();
            ret.Read();

            while (ret.Read())
            {
                a.registro = ret.GetDateTime(0);
                l.Add(a);
                a = new RegistroLogin();
            }
               


            bd.FechaConexao();

            return l;
        }



        public List<Conquista> getPatente(int id)
        {


            List<Conquista> listConquista = new List<Conquista>();
            Conquista Conquista = new Conquista();
            BancoDeDados bd = new BancoDeDados();
            bd.AbreConexao();
          
            MySqlCommand command = new MySqlCommand(null, bd.conn);
            command.CommandText = "SELECT max(t.tcq_id)  ids, t.tcq_tipo_conquista FROM tipo_conquista AS t JOIN conquistas AS c ON c.cq_idConquista = t.tcq_id where c.cq_usrId ='" + id+ "'group by t.tcq_id";

          
            command.Prepare();
            command.ExecuteNonQuery();
            MySqlDataReader ret = command.ExecuteReader();


        
            while (ret.Read())
            {
               
                Conquista.tipoConquistas = ret.GetString(1);
                listConquista.Add(Conquista);
                Conquista = new Conquista();

            }

        


            bd.FechaConexao();

            return listConquista;
        }

        public List<Palavras> getPalavras()
        {


            List<Palavras> listPalavras = new List<Palavras>();
            Palavras Palavras = new Palavras();
            BancoDeDados bd = new BancoDeDados();
            bd.AbreConexao();

            MySqlCommand command = new MySqlCommand(null, bd.conn);
            command.CommandText = "SELECT * FROM game_palavras ORDER BY RAND( )";


            command.Prepare();
            command.ExecuteNonQuery();
            MySqlDataReader ret = command.ExecuteReader();



            while (ret.Read())
            {

                Palavras.id = ret.GetInt32(0);
                Palavras.gp_palavra_ingles = ret.GetString(1);
                Palavras.gp_palavra_traducao = ret.GetString(2);
                listPalavras.Add(Palavras);
                Palavras = new Palavras();

            }




            bd.FechaConexao();

            return listPalavras;
        }

        

    }
}
