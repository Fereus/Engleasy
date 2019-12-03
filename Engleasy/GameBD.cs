﻿using System;
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

            // "SELECT codigoCadastro, nome, idade, telefone, cpf, rg, dataNasc, sexo, endereco, numero, cidade, estado, categoriaPretendida FROM Trab_CADASTROALUNO WHERE cpf LIKE '%" + cpf + "%'";

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

            // "SELECT codigoCadastro, nome, idade, telefone, cpf, rg, dataNasc, sexo, endereco, numero, cidade, estado, categoriaPretendida FROM Trab_CADASTROALUNO WHERE cpf LIKE '%" + cpf + "%'";

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

            // "SELECT codigoCadastro, nome, idade, telefone, cpf, rg, dataNasc, sexo, endereco, numero, cidade, estado, categoriaPretendida FROM Trab_CADASTROALUNO WHERE cpf LIKE '%" + cpf + "%'";

            command.Prepare();
            command.ExecuteNonQuery();
            MySqlDataReader ret = command.ExecuteReader();
           

          //  for(int i = 0; i<4; i++)
           // {
                while (ret.Read())
                {
                    rank.Name = ret.GetString(0);
                    rank.ponto = ret.GetInt32(1);
                    listRank.Add(rank);
                    rank = new Rank();
                    
                }
                
            //}
            

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

        /*  public void Excluir(int id)
          {
              BancoDeDados bd = new BancoDeDados();
              bd.AbreConexao();

              SqlCommand command = new SqlCommand(null, bd.conn);
              command.CommandText = "DELETE FROM Trab_CADASTROALUNO WHERE codigoCadastro ='" + id + "'";



              command.Prepare();
              command.ExecuteNonQuery();

              bd.FechaConexao();
          }
          public void Excluir(Usuario a)
          {

          }

          public void Alterar(Usuario a)
          {
              BancoDeDados bd = new BancoDeDados();
              bd.AbreConexao();

              SqlCommand command = new SqlCommand(null, bd.conn);
              command.CommandText = "UPDATE  Trab_CADASTROALUNO SET nome = @nome,idade = @idade,telefone = @telefone,cpf = @cpf,rg =@rg,dataNasc = @nascimento,sexo = @sexo,endereco =@endereço,numero =@numero,cidade =@cidade,estado =@estado,categoriaPretendida =@categoria  WHERE codigoCadastro = '" + a.ParamId + "'";
              //command.CommandText = "UPDATE  Trab_CADASTROALUNO SET (nome,idade,telefone,cpf,rg,dataNasc,sexo,endereco,numero,cidade,estado,categoriaPretendida) VALUES (@nome,@idade,@telefone,@cpf,@rg,@nascimento,@sexo,@endereço,@numero,@cidade,@estado,@categoria) WHERE codigoCadastro = '@id'";

              // SqlParameter idParam = new SqlParameter("@id", SqlDbType.Int);
              SqlParameter nomeParam = new SqlParameter("@nome", SqlDbType.Text, 40);
              SqlParameter idadeParam = new SqlParameter("@idade", SqlDbType.Int);
              SqlParameter telefoneParam = new SqlParameter("@telefone", SqlDbType.Text, 40);
              SqlParameter cpfParam = new SqlParameter("@cpf", SqlDbType.Text, 40);
              SqlParameter rgParam = new SqlParameter("@rg", SqlDbType.Text, 40);
              SqlParameter nascimentoParam = new SqlParameter("@nascimento", SqlDbType.Date);
              SqlParameter sexoParam = new SqlParameter("@sexo", SqlDbType.Char, 2);
              SqlParameter endereçoParam = new SqlParameter("@endereço", SqlDbType.Text, 40);
              SqlParameter numeroParam = new SqlParameter("@numero", SqlDbType.Int);
              SqlParameter cidadeParam = new SqlParameter("@cidade", SqlDbType.Text, 40);
              SqlParameter estadoParam = new SqlParameter("@estado", SqlDbType.Char, 2);
              SqlParameter categoriaParam = new SqlParameter("@categoria", SqlDbType.Char, 2);

              // idParam.Value = a.ParamId;
              nomeParam.Value = a.nome;
              idadeParam.Value = a.idade2;
              telefoneParam.Value = a.telefone;
              cpfParam.Value = a.cpf;
              rgParam.Value = a.rg;
              nascimentoParam.Value = a.dataNascimento;
              sexoParam.Value = a.sexo;
              endereçoParam.Value = a.endereço;
              numeroParam.Value = a.numero;
              cidadeParam.Value = a.cidade;
              estadoParam.Value = a.estado;
              categoriaParam.Value = a.categoria;

              // command.Parameters.Add(idParam);
              command.Parameters.Add(nomeParam);
              command.Parameters.Add(idadeParam);
              command.Parameters.Add(telefoneParam);
              command.Parameters.Add(cpfParam);
              command.Parameters.Add(rgParam);
              command.Parameters.Add(nascimentoParam);
              command.Parameters.Add(sexoParam);
              command.Parameters.Add(endereçoParam);
              command.Parameters.Add(numeroParam);
              command.Parameters.Add(cidadeParam);
              command.Parameters.Add(estadoParam);
              command.Parameters.Add(categoriaParam);

              command.Prepare();
              command.ExecuteNonQuery();

              bd.FechaConexao();

          }

          public Usuario Consulta(string cpf)
          {

              Usuario a = new Usuario();
              BancoDeDados bd = new BancoDeDados();
              bd.AbreConexao();

              SqlCommand command = new SqlCommand(null, bd.conn);
              command.CommandText = "SELECT codigoCadastro, nome, idade, telefone, cpf, rg, dataNasc, sexo, endereco, numero, cidade, estado, categoriaPretendida FROM Trab_CADASTROALUNO WHERE cpf LIKE '%" + cpf + "%'";

              // "SELECT codigoCadastro, nome, idade, telefone, cpf, rg, dataNasc, sexo, endereco, numero, cidade, estado, categoriaPretendida FROM Trab_CADASTROALUNO WHERE cpf LIKE '%" + cpf + "%'";

              command.Prepare();
              command.ExecuteNonQuery();

              bd.FechaConexao();

              return null;
          }

          public Usuario ConsultaCarro(string cpf)
          {

              Usuario a = new Usuario();
              BancoDeDados bd = new BancoDeDados();
              bd.AbreConexao();

              SqlCommand command = new SqlCommand(null, bd.conn);
              command.CommandText = "SELECT  ModeloVeiculo FROM Trab_VEICULO WHERE categoria = '%" + cpf + "%'";

              // "SELECT codigoCadastro, nome, idade, telefone, cpf, rg, dataNasc, sexo, endereco, numero, cidade, estado, categoriaPretendida FROM Trab_CADASTROALUNO WHERE cpf LIKE '%" + cpf + "%'";

              command.Prepare();
              command.ExecuteNonQuery();

              bd.FechaConexao();

              return null;
          }

          public Usuario Busca(string nome)
          {
              BancoDeDados bd = new BancoDeDados();
              bd.AbreConexao();

              SqlCommand command = new SqlCommand(null, bd.conn);

              command.CommandText = "SELECT * from testeProjeto WHERE nome='" + nome + "'";





              command.Prepare();
              command.ExecuteNonQuery();

              bd.FechaConexao();

              return null;
          }

          public DataSet Consulta()
          {
              BancoDeDados bd = new BancoDeDados();
              bd.AbreConexao();

              SqlCommand command = new SqlCommand(null, bd.conn);
              command.CommandText = "select * from testeProjeto";


              return null;
          }*/

        /*   public void cadastroAula(Usuario a, cAutoEscola b)
           {

               BancoDeDados bd = new BancoDeDados();
               bd.AbreConexao();

               SqlCommand command = new SqlCommand(null, bd.conn);
               command.CommandText = "EXEC Trab_SP_agendaAulaaa @diaAgendamento , @codigoVeiculo , @codigoInstrutor , @cpfAluno, @horario";
               SqlParameter dataParam = new SqlParameter("@diaAgendamento", SqlDbType.DateTime);
               SqlParameter codVeiculoParam = new SqlParameter("@codigoVeiculo", SqlDbType.Int);
               SqlParameter codInstrutorParam = new SqlParameter("@codigoInstrutor", SqlDbType.Int);
               SqlParameter cpfParam = new SqlParameter("@cpfAluno", SqlDbType.VarChar, 20);
               SqlParameter horarioParam = new SqlParameter("@horario", SqlDbType.VarChar, 7);


               dataParam.Value = b.dataAula;
               codVeiculoParam.Value = b.codVeiculo;
               codInstrutorParam.Value = b.codInstrutor;
               cpfParam.Value = a.cpf;
               horarioParam.Value = b.horaAula;


               command.Parameters.Add(dataParam);
               command.Parameters.Add(codVeiculoParam);
               command.Parameters.Add(codInstrutorParam);
               command.Parameters.Add(cpfParam);
               command.Parameters.Add(horarioParam);


               command.Prepare();
               command.ExecuteNonQuery();

               bd.FechaConexao();


           }*/

    }
}
