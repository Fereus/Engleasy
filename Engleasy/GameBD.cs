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

        public void Incluir(Usuario a)
        {

            BancoDeDados bd = new BancoDeDados();
            bd.AbreConexao();

            MySqlCommand command = new MySqlCommand(null, bd.conn);
            command.CommandText = "INSERT INTO cad_user (usr_username,usr_email,usr_password) VALUES (@username,@email,@password)";
            MySqlParameter usernameParam = new MySqlParameter("@username", a.username);
            MySqlParameter emailParam = new MySqlParameter("@email", a.email);
            MySqlParameter passwordParam = new MySqlParameter("@password", a.password);
           
         //   usernameParam.Value = a.username;
           // emailParam.Value = a.email;
           // passwordParam.Value = a.password;
           

            command.Parameters.Add(usernameParam);
            command.Parameters.Add(emailParam);
            command.Parameters.Add(passwordParam);
           

            command.Prepare();
            command.ExecuteNonQuery();

            bd.FechaConexao();


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
