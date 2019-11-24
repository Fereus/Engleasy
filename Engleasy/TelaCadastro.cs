using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Engleasy
{
    public partial class TelaCadastro : Form
    {
        private GameBD dadosGame;
        private BancoDeDados bdGame;
        private Usuario user;
        

        public TelaCadastro()
        {
            InitializeComponent();
            this.dadosGame = new GameBD();
            this.bdGame = new BancoDeDados();
            this.user = new Usuario();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (txt_username.Text =="" && txt_email.Text == "" && txt_confirmaPass.Text == "")
            {
                MessageBox.Show("Por favor preencha todos os dados corretamente!");
                return;
            }

            if(txt_password.Text != txt_confirmaPass.Text)
            {
                MessageBox.Show("Verificação de senha está incorreta");
                return;
            }

            try
            {
                user.username = txt_username.Text;
                user.email = txt_email.Text;
                user.password = txt_confirmaPass.Text;

                dadosGame.Incluir(user);


                MessageBox.Show("Novo cadastro efetuado com sucesso!");

                txt_username.Clear();
                txt_email.Clear();
                txt_confirmaPass.Clear();
                txt_password.Clear();
            }catch(Exception)
            {
                MessageBox.Show("Problemas com a conexão de dados!");
            }
            
        }
    }
}
