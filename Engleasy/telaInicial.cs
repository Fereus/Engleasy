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
    public partial class telaInicial : Form
    {
        private GameBD dadosGame;
        private BancoDeDados bdGame;
        private Usuario user;
        private Rank rank;

        public telaInicial()
        {
            InitializeComponent();
            this.dadosGame = new GameBD();
            this.bdGame = new BancoDeDados();
            this.user = new Usuario();
        }

        private void btnCreditos_Click(object sender, EventArgs e)
        {
            telaCreditos t2 = new telaCreditos();
            t2.Show();
        }

        private void btnRank_Click(object sender, EventArgs e)
        {              

            telaRank t3 = new telaRank();
            t3.Show();
        }

        private void btnJogar_Click(object sender, EventArgs e)
        {
            pn_Login.Visible = true;
        }

        private void btn_Cadastrar_Click(object sender, EventArgs e)
        {
            pn_Cadastro.Visible = true;

        }

        private void button1_Click(object sender, EventArgs e)
        {
            pn_Cadastro.Visible = false;
            btn_Cadastrar.Visible = true;
        }

        private void button2_Click(object sender, EventArgs e)
        {

            if (txt_username.Text == "" && txt_email.Text == "" && txt_confirmaPass.Text == "")
            {
                MessageBox.Show("Por favor preencha todos os dados corretamente!");
                return;
            }

            if (txt_password.Text != txt_confirmaPass.Text)
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
            }
            catch (Exception)
            {
                MessageBox.Show("Problemas com a conexão de dados!");
            }
            pn_Cadastro.Visible = false;

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Usuario usr = new Usuario();
            RegistroLogin reg = new RegistroLogin();
            GameBD login = new GameBD();
            try
            {

                usr.username = txt_username.Text;
                usr.password = txt_password.Text;
                login.login(usr);

                if (Usuario.SessionGame != null)
                {
                    reg.idUsr = 64;
                    reg.registro = DateTime.Now;

                    login.saveRegistroLogin(reg);

                    telaJogo t5 = new telaJogo();
                    t5.Show();
                    //this.Close();
                }


            }
            catch (Exception)
            {

                // MessageBox.Show("Senha incorreta");   (APAGAR EMBAIXO E ATIVAR ESSA LINHA)
                telaJogo t5 = new telaJogo();
                t5.Show();
                //this.Close();
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            pn_Login.Visible = false;
        }

        private void button5_Click(object sender, EventArgs e)
        {

            Usuario usr = new Usuario();
            RegistroLogin reg = new RegistroLogin();
            GameBD login = new GameBD();
            try
            {

                usr.username = txt_username1.Text;
                usr.password = txt_password1.Text;
                login.login(usr);

                if (Usuario.SessionGame != null)
                {
                    reg.idUsr = 65;
                    reg.registro = DateTime.Now;

                    login.saveRegistroLogin(reg);

                  
                    btn_play.Visible = true;
                    btnRank.Visible = true;
                    btnCreditos.Visible = true;
                    pn_Login.Visible = false;
                    btn_Cadastrar.Visible = false;
                }


            }
            catch (Exception)
            {

                 MessageBox.Show("Senha incorreta");//   (APAGAR EMBAIXO E ATIVAR ESSA LINHA)
              //  telaJogo t5 = new telaJogo();
              //  t5.Show();
             //   this.Close();
            }
           
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
