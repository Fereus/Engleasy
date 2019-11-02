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
    public partial class telaJogo : Form
    {
        int i = 1;
        public telaJogo()
        {
            InitializeComponent();
           // CreateControl();

        }

        private void btn_gerador_Click(object sender, EventArgs e)
        {
            Enemy[] inimigo = new Enemy[10];
            inimigo[i] = new Enemy();
            Controls.Add(inimigo[i].pb);
            i=i+1;
            //  Enemy inimigo = new Enemy();
            //  Controls.Add(inimigo.pb);
            // _PRECISA_VERIFICAR_SE_ESTA CRIANDO O OBJETO CERTINHO
            textDebug.Text = ("criado inimigo : {0}"+i);
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            //  TESTES PARA TENTAR MOVER IMG
            //this.SuspendLayout();
            //pb.Location = new Point(pb.Location.X + 10, pb.Location.Y);
            //this.ResumeLayout();
        }
    }
}
