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
    public partial class telaRegistro : Form
    {

        public telaRegistro()
        {
            InitializeComponent();
        }

        private void btnJogar2_Click(object sender, EventArgs e)
        {
            telaJogo t5 = new telaJogo();
            t5.Show();
            this.Close();
        }
    }
}
