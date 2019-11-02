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
        public telaInicial()
        {
            InitializeComponent();
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
            telaRegistro t4 = new telaRegistro();
            t4.Show();
        }
    }
}
