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
        public telaRank()
        {
            InitializeComponent();
            int contador = 0;
            rankLst = dadosGame.getAllPontosAndUser();

            foreach(Rank r in rankLst)
            {
                if (contador == 0)
                {
                    lbl_nome1.Text = r.Name;
                }
                if (contador == 1)
                {
                    lbl_nome2.Text = r.Name;
                }
                if (contador == 2)
                {
                    lbl_nome3.Text = r.Name;
                }
                if (contador == 3)
                {
                    lbl_nome4.Text = r.Name;
                }
              
                contador++;
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
    }
}
