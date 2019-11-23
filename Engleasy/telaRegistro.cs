using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Engleasy
{
  

    public partial class telaRegistro : Form
    {

        public telaRegistro()
        {
            InitializeComponent();
        }

        private void btnJogar2_Click(object sender, EventArgs e)
        {
            Usuario usr = new Usuario();
            GameBD login = new GameBD();
           try
           {

                usr.username = txt_username.Text;
                usr.password = txt_password.Text;
                login.login(usr);
              
                if (Usuario.SessionGame != null)
                {
                                   
                    telaJogo t5 = new telaJogo();
                    t5.Show();
                    this.Close();
                }
           
               
            }
            catch (Exception)
            {

                MessageBox.Show("Senha incorreta");
            }
        }

        private void btnRegistrar_Click(object sender, EventArgs e)
        {
            TelaCadastro cadastro = new TelaCadastro();
            cadastro.Show();
        }
    }
}
