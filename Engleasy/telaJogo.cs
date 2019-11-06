using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Engleasy
{
    public partial class telaJogo : Form
    {

        int x=0, valor = 1;
        Enemy[] inimigo = new Enemy[10];
        bool stop = true;
        //Controls.Add(inimigo[i].pb);


        public telaJogo()
        {
            InitializeComponent();
            inimigo[1] = new Enemy();
            inimigo[2] = new Enemy();
            inimigo[3] = new Enemy();
            inimigo[4] = new Enemy();
            inimigo[5] = new Enemy();
        }

        public void btn_gerador_Click(object sender, EventArgs e)
        {
            //timer1.Enabled = true;
            // DEIXA O TIMER TRUE PRA MOVER



         //   Controls.Add(inimigo[1].pb);
           // Controls.Add(inimigo[2].pb);
            //Controls.Add(inimigo[3].pb);


              //  inimigo[1].pb.Location = new Point(inimigo[1].pb.Location.X + 3, inimigo[1].pb.Location.Y + 3);
              //  inimigo[2].pb.Location = new Point(inimigo[2].pb.Location.X + 25, inimigo[2].pb.Location.Y + 25);
              //  inimigo[3].pb.Location = new Point(inimigo[3].pb.Location.X + 8, inimigo[3].pb.Location.Y + 8);


            
;
            
        // criar o inimigo
        //Enemy[] inimigo = new Enemy[10];
        //inimigo[1] = new Enemy();
        //Controls.Add(inimigo[1].pb);
        // textDebug.Text = ("criado inimigo");

    }

        private void button1_Click(object sender, EventArgs e)
        {
            //timer1.Enabled = false;
            // DEIXA O TIMER FALSO PRA NÃO MOVER
        }



        private void timer1_Tick(object sender, EventArgs e)
        {
            Controls.Add(inimigo[1].pb);
            Controls.Add(inimigo[2].pb);
            Controls.Add(inimigo[3].pb);
            Controls.Add(inimigo[4].pb);
            Controls.Add(inimigo[5].pb);


            inimigo[1].pb.Location = new Point(inimigo[1].pb.Location.X + 3, inimigo[1].pb.Location.Y + 3);
            inimigo[2].pb.Location = new Point(inimigo[2].pb.Location.X + 25, inimigo[2].pb.Location.Y + 25);
            inimigo[3].pb.Location = new Point(inimigo[3].pb.Location.X + 8, inimigo[3].pb.Location.Y + 8);
            inimigo[4].pb.Location = new Point(inimigo[4].pb.Location.X + 15, inimigo[4].pb.Location.Y + 15);
            inimigo[5].pb.Location = new Point(inimigo[5].pb.Location.X + 32, inimigo[5].pb.Location.Y + 32);
            //int x=1;
            //for (int i = 0; i>x; i++) {
            // Enemy[] inimigo = new Enemy[10];
            //inimigo[valor] = new Enemy();
            //Controls.Add(inimigo[x].pb);
            //x = x + 1;


            // Controls.Add(inimigo[1].pb);
            //Controls.Add(inimigo[2].pb);
            //inimigo[x].pb.Location = new Point(inimigo[x].pb.Location.X + 3, inimigo[x].pb.Location.Y + 3);

            //inimigo[2].pb.Location = new Point(inimigo[2].pb.Location.X + 25, inimigo[2].pb.Location.Y + 25);
            //inimigo[3].pb.Location = new Point(inimigo[3].pb.Location.X + 8, inimigo[3].pb.Location.Y + 8);

            // TIMER MOVENDO
            /* pictureBox1.Location = new Point(pictureBox1.Location.X - +1, pictureBox1.Location.Y +1);
             if (pictureBox1.Location.X >= 500)
             {
                 pictureBox1.Location = new Point(pictureBox1.Location.X -2, pictureBox1.Location.Y + 1);
             }
             if (pictureBox1.Location.Y >= 500)
             {
                 pictureBox1.Location = new Point(pictureBox1.Location.X + 1, pictureBox1.Location.Y + -2);
             }*/
            //inimigo[0].pb.Location = new Point(inimigo[0].pb.Location.X + 3, inimigo[0].pb.Location.Y + 3);
        }

        private void timer2_Tick(object sender, EventArgs e)
        {
            //int i = 0;
                //textDebug.Text = ("numero : {0}" +1 + 1);
                //  Controls.Add(inimigo[i].pb);
                  //  inimigo[3].pb.Location = new Point(inimigo[i].pb.Location.X + 3, inimigo[i].pb.Location.Y + 3);
            
        }
    }


    }

