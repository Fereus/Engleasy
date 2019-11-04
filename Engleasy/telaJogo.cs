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

        Enemy inimigo = new Enemy();
        //Controls.Add(inimigo[i].pb);


        public telaJogo()
        {
            InitializeComponent();

        }

        public void btn_gerador_Click(object sender, EventArgs e)
        {
            timer1.Enabled = true;
            // DEIXA O TIMER TRUE PRA MOVER


            // criar o inimigo
            //Enemy inimigo = new Enemy();
           // inimigo = new Enemy();
           // Controls.Add(inimigo.pb);
           // textDebug.Text = ("criado inimigo");

        }

        private void button1_Click(object sender, EventArgs e)
        {
            timer1.Enabled = false;
            // DEIXA O TIMER FALSO PRA NÃO MOVER
        }



        private void timer1_Tick(object sender, EventArgs e)
        {
            // TIMER MOVENDO
            pictureBox1.Location = new Point(pictureBox1.Location.X - +1, pictureBox1.Location.Y +1);
            if (pictureBox1.Location.X >= 500)
            {
                pictureBox1.Location = new Point(pictureBox1.Location.X -2, pictureBox1.Location.Y + 1);
            }
            if (pictureBox1.Location.Y >= 500)
            {
                pictureBox1.Location = new Point(pictureBox1.Location.X + 1, pictureBox1.Location.Y + -2);
            }

        }


    }
}
