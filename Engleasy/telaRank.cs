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
    public partial class telaRank : Form
    {
        private GameBD dadosGame = new GameBD();
        private BancoDeDados bdGame = new BancoDeDados();
        private Usuario user = new Usuario();
        private Rank rank = new Rank();
        List<Rank> rankLst = new List<Rank>();
        List<RegistroLogin> reglist = new List<RegistroLogin>();
        List<Conquista> listConquista = new List<Conquista>();
        public telaRank()
        {
            InitializeComponent();
            int contador = 0;
            try
            {
                rankLst = dadosGame.getAllPontosAndUser();
                reglist = dadosGame.getLastLogin(Usuario.SessionGame.id);
                listConquista = dadosGame.getPatente(Usuario.SessionGame.id);
            }
            catch
            {
                MessageBox.Show("Não foi possivel fazer conexão com o banco de dados");
                return;
            }

           
            int indexPatent = listConquista.Count;
            int indexReg = reglist.Count;
            int index = rankLst.Count;
            for (int r = 0; r < rankLst.Count; r++)
            {
                if (contador == 0)
                {
                    lbl_nome1.Text = rankLst[index - 1].Name;
                    lbl_ponto1.Text = "Pontos: " + rankLst[index - 1].ponto.ToString();
                }
                if (contador == 1)
                {
                    lbl_nome2.Text = rankLst[index - 2].Name;
                    lbl_ponto2.Text = "Pontos: " + rankLst[index - 2].ponto.ToString();
                }
                if (contador == 2)
                {
                    lbl_nome3.Text = rankLst[index - 3].Name;
                    lbl_ponto3.Text = "Pontos: " + rankLst[index - 3].ponto.ToString();
                }
                if (contador == 3)
                {
                    lbl_nome4.Text = rankLst[index - 4].Name;
                    lbl_ponto4.Text = "Pontos: " + rankLst[index - 4].ponto.ToString();
                }

                contador++;

            }
            try
            {
                lbl_patent.Text = listConquista[indexPatent - 1].tipoConquistas;
            }
            catch
            {
                lbl_patent.Text = "Sem patente";
            }
           
            lbl_nick.Text = Usuario.SessionGame.username;
            lbl_record.Text= dadosGame.getBestPointById(Usuario.SessionGame.id).ToString();
            try
            {
                lbl_lastLogin.Text = reglist[indexReg - 2].registro.ToString();
            }
            catch
            {
                lbl_lastLogin.Text = reglist[indexReg - 1].registro.ToString();
            }
          

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void lbn_nome1_Click(object sender, EventArgs e)
        {

        }

        private void pbox_Dogtag1_Click(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void lbn_bestscore_Click(object sender, EventArgs e)
        {

        }
    }
}
