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

        int posyrnd = 0, posxrnd = 0, i = 0, r = 0, x = 0, contador = 2, vida = 100;
        int round = 0;
        Enemy[] inimigo = new Enemy[15];
        Random rnd = new Random();
        bool stop = true;

        private void lbn_Pontos_Click(object sender, EventArgs e)
        {

        }

        private void telaJogo_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        //Controls.Add(inimigo[i].pb);


        public telaJogo()
        {
            InitializeComponent();
            for (int i = 0; i < 15; i++)
            {
                inimigo[i] = new Enemy();

            }
            pbVida.Value = 100;
        }

        public void btn_gerador_Click(object sender, EventArgs e)
        {
            //DELETA INIMIGO

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
            //PROXIMO ROUND
            //tbox_Round.Text = ("Round :" + round);
            //Controls.Add(inimigo[round].pb);
            //Controls.Add(inimigo[2].pb);
            //Controls.Add(inimigo[3].pb);
            //Controls.Add(inimigo[4].pb);
            //Controls.Add(inimigo[5].pb);


           /* for (int i = 0; i > 4; i++)
            { */
            //inimigo[round].pb.Location = new Point(inimigo[round].pb.Location.X + 3, inimigo[round].pb.Location.Y + 3);
            /*inimigo[2].pb.Location = new Point(inimigo[2].pb.Location.X + 25, inimigo[2].pb.Location.Y + 25);
            inimigo[3].pb.Location = new Point(inimigo[3].pb.Location.X + 8, inimigo[3].pb.Location.Y + 8);
            inimigo[4].pb.Location = new Point(inimigo[4].pb.Location.X + 15, inimigo[4].pb.Location.Y + 15);
            inimigo[5].pb.Location = new Point(inimigo[5].pb.Location.X + 32, inimigo[5].pb.Location.Y + 32);
            }*/
        }



        private void timer1_Tick(object sender, EventArgs e)
        {
            for (i = 0; i < r; i++)
            {
                  Controls.Add(inimigo[i].pb);
                  Controls.Add(inimigo[i].nome);
                 if (inimigo[i].criado == false) {
                    inimigo[i].lado = rnd.Next(1, 5);


                    if (inimigo[i].lado == 1)
                    {
                        inimigo[i].pb.Image = Properties.Resources.solbaixo;
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 900), 0);
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X-5, inimigo[i].pb.Location.Y-15);
                    }
                    if (inimigo[i].lado == 2)
                    {
                        inimigo[i].pb.Image = Properties.Resources.soldireita;
                        inimigo[i].pb.Location = new Point(0, rnd.Next(900));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 3)
                    {
                        inimigo[i].pb.Image = Properties.Resources.solcima;
                        inimigo[i].pb.Location = new Point(rnd.Next(0, 900), rnd.Next(590, 590));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }
                    if (inimigo[i].lado == 4)
                    {
                        inimigo[i].pb.Image = Properties.Resources.solesquerda;
                        inimigo[i].pb.Location = new Point(rnd.Next(880, 880), rnd.Next(0, 590));
                        inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                    }

                    inimigo[i].criado = true;
                }
            }

            r++;
            if (r == 15)
            {
                r = 0;
            }

        }


        


        private void timer2_Tick(object sender, EventArgs e)
        {
            //406; 289
            foreach (Enemy x in inimigo)
            {

                if (x.criado == true)
                {
                    if ((x.pb.Location.X < 406) && (x.pb.Location.Y > 289))
                        x.pb.Location = new Point(x.pb.Location.X + 1, x.pb.Location.Y-1);
                        x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y-15);

                    if ((x.pb.Location.X > 406) && (x.pb.Location.Y < 289))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y + 1);
                        x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X > 406) && (x.pb.Location.Y > 289))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y- 1);
                     x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X < 406) && (x.pb.Location.Y < 289))
                        x.pb.Location = new Point(x.pb.Location.X + 1, x.pb.Location.Y + 1);
                      x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X == 406) && (x.pb.Location.Y > 289))
                        x.pb.Location = new Point(x.pb.Location.X, x.pb.Location.Y - 1);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X == 406) && (x.pb.Location.Y < 289))
                        x.pb.Location = new Point(x.pb.Location.X, x.pb.Location.Y + 1);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X < 406) && (x.pb.Location.Y == 289))
                        x.pb.Location = new Point(x.pb.Location.X +1, x.pb.Location.Y);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X > 406) && (x.pb.Location.Y == 289))
                        x.pb.Location = new Point(x.pb.Location.X - 1, x.pb.Location.Y);
                       x.nome.Location = new Point(x.pb.Location.X + -5, x.pb.Location.Y - 15);

                    if ((x.pb.Location.X == 406) && (x.pb.Location.Y == 289))
                        pbVida.Value = vida - 20;
                }

                if ((x.pb.Location.X == 406) && (x.pb.Location.Y == 289))
                { pbVida.Value = vida - 20; }

            }
        }
        private void textDebug_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)

                for (i=0; i<15; i++)
                {
                    inimigo[i].lado = rnd.Next(1, 5);

                 if (inimigo[i].lado == 1)
                 {
                    inimigo[i].pb.Location = new Point(rnd.Next(0, 900), 0);
                    inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                 }
                 if (inimigo[i].lado == 2)
                 {
                    inimigo[i].pb.Location = new Point(0, rnd.Next(900));
                    inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                 }
                 if (inimigo[i].lado == 3)
                 {
                    inimigo[i].pb.Location = new Point(rnd.Next(0, 900), rnd.Next(590, 590));
                    inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                 }
                 if (inimigo[i].lado == 4)
                 {
                    inimigo[i].pb.Location = new Point(rnd.Next(880, 880), rnd.Next(0, 590));
                    inimigo[i].nome.Location = new Point(inimigo[i].pb.Location.X - 5, inimigo[i].pb.Location.Y - 15);
                 }
                }
        }
    }


    }

